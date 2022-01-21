<%--
  Created by IntelliJ IDEA.
  User: gxhan
  Date: 19/01/2022
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>


<div class="container">
    <div class="d-flex d-flex justify-content-between p-3">
        <a href="<%=request.getContextPath()%>/LoginServlet" class="btn btn-danger">Logout</a>
        <a href="<%=request.getContextPath()%>/CreateAuctionServlet" class="btn btn-primary">CreateAuction</a>
    </div>
    <div class="card">
        <h3 class="d-flex justify-content-center p-3">
            Available Auctions
        </h3>
        <div class="d-flex justify-content-around p-4">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="<%=request.getContextPath()%>/resources/ferrari.jpg" alt="Ferrari image">
                <div class="card-body">
                    <h5 class="card-title">Ferrari</h5>
                    <a href="<%=request.getContextPath()%>/AuctionServlet" class="btn btn-primary">Enter</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="<%=request.getContextPath()%>/resources/ferrari.jpg" alt="Ferrari image">
                <div class="card-body">
                    <h5 class="card-title">Ferrari</h5>
                    <a href="<%=request.getContextPath()%>/AuctionServlet" class="btn btn-primary">Enter</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="<%=request.getContextPath()%>/resources/ferrari.jpg" alt="Ferrari image">
                <div class="card-body">
                    <h5 class="card-title">Ferrari</h5>
                    <a href="<%=request.getContextPath()%>/AuctionServlet" class="btn btn-primary">Enter</a>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
