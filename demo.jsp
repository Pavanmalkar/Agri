<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome Page</title>
  <link rel="stylesheet" href="styles1.css">
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1 style="color:red">Welcome to This Page</h1><hr>
    <h5>Explore our collection of items below. You can find the name and price of each item, and when you're ready, you can go back to the homepage using the button below.</h5>
  </header>

  <!-- Image Grid Section -->
  <div class="container">
    <div class="item">
      <a href="product.jsp?productId=1">
        <img src="img/herbs/h1.jpeg" alt="Product 1">
        <p class="name">Product 1</p>
        <p class="price">Rs 499.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=2">
        <img src="img/herbs/h2.jpeg" alt="Product 2">
        <p class="name">Product 2</p>
        <p class="price">Rs 599.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=3">
        <img src="img/herbs/h3.jpeg" alt="Product 3">
        <p class="name">Product 3</p>
        <p class="price">Rs 699.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=4">
        <img src="img/herbs/h4.jpeg" alt="Product 4">
        <p class="name">Product 4</p>
        <p class="price">Rs 299.00</p>
      </a>
    </div>
  </div>
  <div class="container">
    <div class="item">
      <a href="product.jsp?productId=5">
        <img src="img/herbs/h5.jpeg" alt="Product 5">
        <p class="name">Product 5</p>
        <p class="price">Rs 699.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=6">
        <img src="img/herbs/h6.jpeg" alt="Product 6">
        <p class="name">Product 6</p>
        <p class="price">Rs 799.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=7">
        <img src="img/herbs/h7.jpeg" alt="Product 7">
        <p class="name">Product 7</p>
        <p class="price">Rs 599.00</p>
      </a>
    </div>
    <div class="item">
      <a href="product.jsp?productId=8">
        <img src="img/herbs/h8.jpeg" alt="Product 8">
        <p class="name">Product 8</p>
        <p class="price">Rs 399.00</p>
      </a>
    </div>
  </div>

  <!-- Go Back to Home Button -->
  <div class="button-container">
    <a href="home.jsp" class="home-button">Go Back to Home</a>
  </div>
</body>
</html>
