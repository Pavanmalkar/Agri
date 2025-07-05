<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  <link rel="stylesheet" href="contact-us.css">
</head>
<body>
  <header class="header">
    <h1>Contact Us</h1>
    <p>If you have any questions, feel free to reach out to us using the form below!</p>
  </header>

  <section class="contact-form">
    <h2>Get in Touch</h2>
   <form action="contactback_end.jsp" method="POST">
    <div class="form-group">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Your full name" required>
    </div>

    <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" placeholder="Your email address" required>
    </div>

    <div class="form-group">
        <label for="message">Message</label>
        <textarea id="message" name="message" rows="5" placeholder="Your message" required></textarea>
    </div>

    <div class="form-group">
        <button type="submit" class="submit-btn">Send Message</button>
    </div>
</form>
  </section>

  <footer class="footer">
    <p>&copy; 2024 [Your Website Name]. All Rights Reserved.</p>
  </footer>
</body>
</html>
