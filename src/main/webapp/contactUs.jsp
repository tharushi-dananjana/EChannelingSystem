<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us - eChannelling</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <script src="https://kit.fontawesome.com/9449774243.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-100 text-gray-800">

  <!-- Header -->
   <%@ include file="./hf/header.jsp" %>

  <!-- Contact Section -->
  <section class="py-12">
    <div class="max-w-7xl mx-auto px-4 grid grid-cols-1 md:grid-cols-2 gap-10">
      
      <!-- Contact Form -->
      <div>
        <h2 class="text-2xl font-bold mb-4">Send Us a Message</h2>
        <form action="#" method="POST" class="space-y-4">
          <div>
            <label class="block text-sm font-medium">Full Name</label>
            <input type="text" name="name" class="w-full mt-1 p-2 border border-gray-300 rounded-lg" required>
          </div>
          <div>
            <label class="block text-sm font-medium">Email Address</label>
            <input type="email" name="email" class="w-full mt-1 p-2 border border-gray-300 rounded-lg" required>
          </div>
          <div>
            <label class="block text-sm font-medium">Subject</label>
            <input type="text" name="subject" class="w-full mt-1 p-2 border border-gray-300 rounded-lg">
          </div>
          <div>
            <label class="block text-sm font-medium">Message</label>
            <textarea name="message" rows="5" class="w-full mt-1 p-2 border border-gray-300 rounded-lg" required></textarea>
          </div>
          <button type="submit" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition">
            Send Message
          </button>
        </form>
      </div>

      <!-- Contact Info / Map -->
      <div>
        <h2 class="text-2xl font-bold mb-4">Our Office</h2>
        <p class="mb-4">eChannelling Pvt Ltd<br>123 Health Street<br>Colombo, Sri Lanka</p>
        <p class="mb-4">Phone: +94 11 123 4567<br>Email: support@echannelling.lk</p>
        <div class="h-64 w-full rounded-lg overflow-hidden shadow">
          <!-- Embed Google Maps or static placeholder -->
          <iframe 
            class="w-full h-full"
            src="https://www.google.com/maps/embed?pb=!1m18!..." 
            style="border:0;" 
            allowfullscreen="" 
            loading="lazy"
          ></iframe>
        </div>
      </div>

    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-gray-800 text-white py-4 text-center">
     <%@ include file="./hf/footer.jsp" %>
  </footer>

</body>
</html>
