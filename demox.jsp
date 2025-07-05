<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dairy Products - Welcome Page</title>
  <link rel="stylesheet" href="styles1.css">
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1 style="color:red">Welcome to Our Dairy Products Page</h1><hr>
    <h5>Explore our collection of items below. Click on any product to view more details.</h5>
  </header>

  <!-- Image Grid Section -->
  <div class="container">
    <div class="item" onclick="location.href='product.jsp?name=Product%201&price=499.00&image=img/dairy/d1.jpeg'">
      <img src="img/dairy/d1.jpeg" alt="Product 1">
      <p class="name">Product 1</p>
      <p class="price">Rs 499.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%202&price=599.00&image=img/dairy/d2.jpeg'">
      <img src="img/dairy/d2.jpeg" alt="Product 2">
      <p class="name">Product 2</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%203&price=699.00&image=img/dairy/d3.jpeg'">
      <img src="img/dairy/d3.jpeg" alt="Product 3">
      <p class="name">Product 3</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%204&price=299.00&image=img/dairy/d8.jpeg'">
      <img src="img/dairy/d8.jpeg" alt="Product 4">
      <p class="name">Product 4</p>
      <p class="price">Rs 299.00</p>
    </div>
  </div>

  <div class="container">
    <div class="item" onclick="location.href='product.jsp?name=Product%205&price=699.00&image=img/dairy/d5.jpeg'">
      <img src="img/dairy/d5.jpeg" alt="Product 5">
      <p class="name">Product 5</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%206&price=799.00&image=img/dairy/d6.jpeg'">
      <img src="img/dairy/d6.jpeg" alt="Product 6">
      <p class="name">Product 6</p>
      <p class="price">Rs 799.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%207&price=599.00&image=img/dairy/d9.jpeg'">
      <img src="img/dairy/d9.jpeg" alt="Product 7">
      <p class="name">Product 7</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product%208&price=399.00&image=img/dairy/d8.jpeg'">
      <img src="img/dairy/d8.jpeg" alt="Product 8">
      <p class="name">Product 8</p>
      <p class="price">Rs 399.00</p>
    </div>
  </div>

  <!-- Go Back to Home Button -->
  <div class="button-container">
    <a href="home.jsp" class="home-button">Go Back to Home</a>
  </div>
</body>
</html>
