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
    <div class="item" onclick="location.href='product.jsp?name=Product 1&price=499.00&image=img/herbs/h1.jpeg'">
      <img src="img/herbs/h1.jpeg" alt="Product 1">
      <p class="name">Product 1</p>
      <p class="price">Rs 499.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 2&price=599.00&image=img/herbs/h2.jpeg'">
      <img src="img/herbs/h2.jpeg" alt="Product 2">
      <p class="name">Product 2</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 3&price=699.00&image=img/herbs/h3.jpeg'">
      <img src="img/herbs/h3.jpeg" alt="Product 3">
      <p class="name">Product 3</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 4&price=299.00&image=img/herbs/h4.jpeg'">
      <img src="img/herbs/h4.jpeg" alt="Product 4">
      <p class="name">Product 4</p>
      <p class="price">Rs 299.00</p>
    </div>
  </div>

  <div class="container">
    <div class="item" onclick="location.href='product.jsp?name=Product 5&price=699.00&image=img/herbs/h5.jpeg'">
      <img src="img/herbs/h5.jpeg" alt="Product 5">
      <p class="name">Product 5</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 6&price=799.00&image=img/herbs/h6.jpeg'">
      <img src="img/herbs/h6.jpeg" alt="Product 6">
      <p class="name">Product 6</p>
      <p class="price">Rs 799.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 7&price=599.00&image=img/herbs/h7.jpeg'">
      <img src="img/herbs/h7.jpeg" alt="Product 7">
      <p class="name">Product 7</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Product 8&price=399.00&image=img/herbs/h8.jpeg'">
      <img src="img/herbs/h8.jpeg" alt="Product 8">
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
