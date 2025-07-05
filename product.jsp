<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("sign-in.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Details</title>
  <link rel="stylesheet" href="styles1.css">
  <style>
      body {
          font-family: 'Poppins', sans-serif;
          background-color: #f4f4f4;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          margin: 0;
      }

      .container {
          background: #fff;
          padding: 25px;
          border-radius: 10px;
          box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
          width: 400px;
          text-align: center;
          transition: 0.3s ease-in-out;
      }

      .container:hover {
          transform: scale(1.02);
      }

      h2 {
          color: #333;
          margin-bottom: 20px;
      }

      img {
          border-radius: 10px;
          margin-bottom: 15px;
          max-width: 100%;
          height: auto;
      }

      select, input {
          width: 100%;
          padding: 10px;
          margin: 10px 0;
          border-radius: 8px;
          border: 1px solid #ddd;
          font-size: 16px;
      }

      button {
          background: linear-gradient(135deg, #28a745, #218838);
          color: white;
          padding: 12px;
          border: none;
          border-radius: 8px;
          cursor: pointer;
          font-size: 18px;
          width: 100%;
          transition: 0.3s;
          margin-top: 10px;
      }

      button:hover {
          background: linear-gradient(135deg, #218838, #1e7e34);
          transform: scale(1.05);
      }
  </style>
</head>
<body>

<div class="container">
    <h2>Product Details</h2>
    <img src="<%= request.getParameter("image") %>" alt="Product Image">
    <p><strong>Product Name:</strong> <%= request.getParameter("name") %></p>
    <p><strong>Price:</strong> Rs <%= request.getParameter("price") %></p>

    <label for="size"><strong>Size:</strong></label>
    <select name="size" id="size">
        <option value="100 ml">100 ml</option>
        <option value="250 ml">250 ml</option>
        <option value="500 ml">500 ml</option>
    </select>

    <label for="quantity"><strong>Quantity:</strong></label>
    <input type="number" id="quantity" value="1" min="1">

    <form action="cart_backend.jsp" method="post">
        <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
        <input type="hidden" name="price" value="<%= request.getParameter("price") %>">
        <input type="hidden" name="image" value="<%= request.getParameter("image") %>">
        <input type="hidden" name="email" value="<%= email %>">

        <input type="hidden" id="selected_size" name="size">
        <input type="hidden" id="selected_quantity" name="quantity">

        <button type="submit" onclick="setValues()">Add to Cart</button>
    </form>

    <form action="pyment.jsp" method="post">
        <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
        <input type="hidden" name="price" value="<%= request.getParameter("price") %>">
        <input type="hidden" name="image" value="<%= request.getParameter("image") %>">
        <input type="hidden" name="email" value="<%= email %>">

        <input type="hidden" id="buy_selected_size" name="size">
        <input type="hidden" id="buy_selected_quantity" name="quantity">

        <button type="submit" onclick="setBuyValues()">Buy Now</button>
    </form>
</div>

<script>
    function setValues() {
        document.getElementById('selected_size').value = document.getElementById('size').value;
        document.getElementById('selected_quantity').value = document.getElementById('quantity').value;
    }
    
    function setBuyValues() {
        document.getElementById('buy_selected_size').value = document.getElementById('size').value;
        document.getElementById('buy_selected_quantity').value = document.getElementById('quantity').value;
    }
</script>

</body>
</html>
