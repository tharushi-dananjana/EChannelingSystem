<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./hf/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login - Admin Panel</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  
  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/9449774243.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans min-h-screen flex flex-col">

  <!-- Main Login Section -->
  <main class="flex-grow flex items-center justify-center py-12">
    <div class="bg-white p-8 rounded shadow-md w-full max-w-md">
      <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">
        <i class="fas fa-user-shield mr-2 text-blue-800"></i>Admin Login
      </h2>

      <form action="LoginServlet" method="post">
        <div class="mb-4">
          <label for="email" class="block text-gray-700 mb-1">Email Address</label>
          <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
        </div>

        <div class="mb-4">
          <label for="password" class="block text-gray-700 mb-1">Password</label>
          <input type="password" id="password" name="password" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
        </div>

        <div class="flex items-center justify-between mb-4">
          <label class="inline-flex items-center">
            <input type="checkbox" class="form-checkbox text-blue-800">
            <span class="ml-2 text-gray-700">Remember me</span>
          </label>
          <a href="#" class="text-blue-800 hover:underline text-sm">Forgot password?</a>
        </div>

        <button type="submit" class="w-full bg-blue-800 text-white py-2 rounded hover:bg-blue-600">
          <i class="fas fa-sign-in-alt mr-2"></i>Login
        </button>
      </form>
    </div>
  </main>

  <%@ include file="./hf/footer.jsp" %>
</body>
</html>
