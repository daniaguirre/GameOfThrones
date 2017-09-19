#libraries
library(tidyverse) #varios paquetes compatibles en la represntacion de datos
library(igraph) #network analysis tools for R, python and C/C++
library(statnet) # tools for analysis, simulation and visulization of network

#loaing the edges and nodes' network
load("union_edges.RData")
load("union_characters.RData")

#showing the RData tables
#head(union_edges)
#head(union_characters)

#creating the network from ipgraph
union_graph <- graph_from_data_frame(union_edges, directed = TRUE, vertices = union_characters)

#plot
layout <- layout_with_fr(union_graph)
plot(union_graph, layout = layout)


