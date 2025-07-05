<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tools - Welcome Page</title>
  <link rel="stylesheet" href="styles1.css">
</head>
<body>
  <!-- Header Section -->
  <header>
    <h1 style="color:red">Welcome to Our Tools Page</h1><hr>
    <h5>Explore our collection of tools below. Click on any product to view more details.</h5>
  </header>

  <!-- Image Grid Section -->
  <div class="container">
    <div class="item" onclick="location.href='product.jsp?name=Tool%201&price=499.00&image=img/tools/tool1.avif'">
      <img src="img/tools/tool1.avif" alt="Tool 1">
      <p class="name">Tool 1</p>
      <p class="price">Rs 499.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%202&price=599.00&image=img/tools/tool2.avif'">
      <img src="img/tools/tool2.avif" alt="Tool 2">
      <p class="name">Tool 2</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%203&price=699.00&image=img/tools/tool3.avif'">
      <img src="img/tools/tool3.avif" alt="Tool 3">
      <p class="name">Tool 3</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%204&price=299.00&image=img/tools/tool4.avif'">
      <img src="img/tools/tool4.avif" alt="Tool 4">
      <p class="name">Tool 4</p>
      <p class="price">Rs 299.00</p>
    </div>
  </div>

  <div class="container">
    <div class="item" onclick="location.href='product.jsp?name=Tool%205&price=699.00&image=img/tools/tool5.avif'">
      <img src="img/tools/tool5.avif" alt="Tool 5">
      <p class="name">Tool 5</p>
      <p class="price">Rs 699.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%206&price=799.00&image=img/tools/tool6.avif'">
      <img src="img/tools/tool6.avif" alt="Tool 6">
      <p class="name">Tool 6</p>
      <p class="price">Rs 799.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%207&price=599.00&image=img/tools/tool3.avif'">
      <img src="img/tools/tool3.avif" alt="Tool 7">
      <p class="name">Tool 7</p>
      <p class="price">Rs 599.00</p>
    </div>
    <div class="item" onclick="location.href='product.jsp?name=Tool%208&price=399.00&image=img/tools/tool1.avif'">
      <img src="img/tools/tool1.avif" alt="Tool 8">
      <p class="name">Tool 8</p>
      <p class="price">Rs 399.00</p>
    </div>
  </div>

  <!-- Go Back to Home Button -->
  <div class="button-container">
    <a href="home.jsp" class="home-button">Go Back to Home</a>
  </div>
</body>
</html>
