<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./hf/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>E-Channelling</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <!-- Add Font Awesome CDN for Icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800 font-sans">

  <!-- Hero Section -->
  <section class="bg-orange-100 py-16">
    <div class="container mx-auto px-4 text-center">
      <h2 class="text-4xl font-bold text-orange-700 mb-4">Book Your Doctor Appointment Online</h2>
      <p class="text-lg mb-6 text-gray-700">Fast, secure, and convenient access to healthcare professionals.</p>
      <a href="#" class="bg-orange-600 text-white px-6 py-3 rounded hover:bg-orange-700 transition">Get Started</a>
    </div>
  </section>

  <!-- Additional Single Image -->
  <section class="py-8 bg-white">
    <div class="container mx-auto px-4 text-center">
      <!-- Fix image path -->
      <img src="images/pic4.png" alt="Healthcare Banner" class="mx-auto rounded shadow-lg">
    </div>
  </section>

  <!-- Services Section -->
  <section class="py-12 bg-white">
    <div class="container mx-auto px-4">
      <h3 class="text-2xl font-bold text-center mb-8">Our Services</h3>
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8 text-center">
        <div class="p-6 border rounded shadow hover:shadow-lg transition">
          <h4 class="text-xl font-semibold mb-2">Find Doctors</h4>
          <p class="text-gray-600">Search for doctors by specialty, location, or availability.</p>
        </div>
        <div class="p-6 border rounded shadow hover:shadow-lg transition">
          <h4 class="text-xl font-semibold mb-2">Book Appointments</h4>
          <p class="text-gray-600">Schedule visits with just a few clicks, anytime, anywhere.</p>
        </div>
        <div class="p-6 border rounded shadow hover:shadow-lg transition">
          <h4 class="text-xl font-semibold mb-2">View Records</h4>
          <p class="text-gray-600">Access your medical history securely from any device.</p>
        </div>
      </div>
    </div>
  </section>

  <%@ include file="./hf/footer.jsp" %>

</body>
</html>
