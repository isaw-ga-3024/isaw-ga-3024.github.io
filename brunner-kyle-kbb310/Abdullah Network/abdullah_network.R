######################################################################
""" 

Welcome to the Network of 'Abd Allah b. As'ad 


"""
######################################################################
library("igraph") # Imports basic network visualization library
library("visNetwork") # Imports the "jiggly" network with html capabilities

# Here we import our csv files as our data set of nodes and edges
nodes <- read.csv("nodes.csv", header = T, as.is = T)
edges <- read.csv("edges.csv", header = T, as.is = T)

# Then we attach them to a network string called "net". This network will also be directed

net <- graph_from_data_frame(d=edges, vertices=nodes, directed=T)

# Now we can do a test plot of our network, as well as our data set
E(net)
V(net)
plot(net)

# We can even check our node and edge attributes
E(net)$Citation
V(net)$Rank

# This is the first network visualization - very simple:

plot(net, edge.arrow.size=.4, edge.curved=.1, vertex.label.color="black"
	layout=layout_nicely)


# Let's make some betweenness centrality visualizations now
deg <- degree(net, mode="all")
deg.dist <- degree_distribution(net, Cumulative = T, mode="all") 
#sets up chart for degrees of the network
plot(plot(x=0:max(deg), y=1-deg.dist, pch=19, cex=1.2, col="orange",
	xlab = "Degree", ylab="Cumulative Frequency")

ceb <- cluster_edge_betweenness(net) # sets our betweenness variable
dendPlot(ceb, mode="hclust") # makes the table network with clusters highlighted
plot(ceb, net, edge.arrow.size=.4, edge.curved=.1, vertex.label.color="black"
	layout=layout_nicely) # plots network map with clusters highlighted

############### VISNETWORK CODE ####################

data <- toVisNetworkData(net) #this brings our iGraph network data into the visNetwork library
nodes = data$nodes
edges = data$edges

visNetwork(nodes, edges)
# This is our basic visualization through the visNetwork Library
# But let's make things a little fancy
nodes$shape <- "dot"
nodes$shadow <- TRUE
nodes$borderWidth <- 2
edges$color <- "gray"
edges$arrows <- "to"
edges$smooth <- TRUE
edges$shadow <- FALSE
edges$title <- paste("Citation", edges$Citation) #This allows dialog window with the Citation

visNetwork(nodes, edges, width = "100%", height = "700px") %>%
	visEdges(shadow=c(FALSE),
		arrows = c("to"),
		)%>%
	visOptions(
		highlightNearest = TRUE, #highlights edges connected to node
		selectedBy = "Rank", #brings up dialog box to select nodes based on a node Attribute
		nodesIdSelection = TRUE) %>% #brings up a dialog box to select nodes based on ID
	visInteraction(navigationButtons = TRUE) %>% #adds webpage controls
	visHierarchicalLayout()

# all outputs were made into an html file















