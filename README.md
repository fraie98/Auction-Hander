# DistributedSystemsProject
Project for ***Distributed Systems And Middleware Technologies*** - University of Pisa.

AuctionHandler is a distributed application which allow registered users to create/enter online auctions in order to sell/buy goods.

The main technologies used are:

- Tomcat as Web Server

- WebSocket

- Java Servlet

- Erlang for the back-end

- MnesiaDB as database

The most important features are:

- A user in the auction can see all the users that in this moment are online, and that list is coherent among all online users and it is updated each time a new user enter the auction

- All the users partecipating an auction see the same remaining time and the same list of offers (this is updated for all users when a new offer arrives)
