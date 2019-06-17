<%@page contentType="text/html" pageEncoding="utf-8" %>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/main.css">
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
</head>
<% request.setCharacterEncoding("UTF-8"); %>
<aside id="sidebarA">
    <nav><br>
      <ul>
          <li><a class="current" href="index.jsp">
                 &emsp; TRANG CHỦ</a></li>          
          <li><a href="information.jsp">
                 &emsp; NẠP TIỀN(DEPOSIT)</a></li>
          <li><a href="inforaccount.jsp">
                 &emsp; RÚT TIỀN(WITHDRAW)</a></li>        
          <li><a href="inforaccount.jsp">
                 &emsp; CHUYỂN TIỀN(TRANSFER)</a></li>       
      </ul>
    </nav>
</aside>