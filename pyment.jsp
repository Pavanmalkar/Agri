<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flipkart Payment Page</title>
<style>
  /* Reset default styles */
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
  }
  .container {
    max-width: 600px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 5px;
    padding: 30px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  h1 {
    text-align: center;
    margin-bottom: 20px;
  }
  .form-group {
    margin-bottom: 20px;
  }
  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  input[type="text"],
  input[type="email"],
  input[type="number"],
  select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .btn {
    display: block;
    width: 100%;
    padding: 10px;
    margin-top: 20px;
    border: none;
    border-radius: 5px;
    background-color: #f5564e;
    color: #fff;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  .btn:hover {
    background-color: #d6443f;
  }
</style>
</head>
<body>
<div class="container">
  <h1>Payment Details</h1>
  <form  action="paymentback_end.jsp" method="post" id="paymentForm">
    <div class="form-group">
      <label for="cardNumber">Card Number</label>
      <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter your card number" required>
    </div>
    <div class="form-group">
      <label for="expiryDate">Expiry Date</label>
      <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
    </div>
    <div class="form-group">
      <label for="cvv">CVV</label>
      <input type="text" id="cvv" name="cvv" placeholder="CVV" required>
    </div>
    <div class="form-group">
      <label for="name">Cardholder Name</label>
      <input type="text" id="name" name="card_holder_name" placeholder="Enter cardholder name" required>
    </div>
    <div class="form-group">
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required>
    </div>
     <a href="thankyou.jsp"></a><button type="submit" class="btn">Make Payment</button></a>
  </form>
</div>
</body>
</html>
