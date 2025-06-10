<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./hf/header.jsp"%>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Create New Record</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/9449774243.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans">
  <div class="flex h-screen">
    <!-- Sidebar -->
    <aside class="w-64 bg-gray-700 shadow-md p-4">
      <h2 class="text-2xl font-bold mb-4 text-white">Admin Panel</h2>
      <nav>
        <ul>
          <li class="mb-2"><a href="index.html" class="text-white hover:text-yellow-300"><i class="fas fa-tachometer-alt mr-2"></i>Dashboard</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-yellow-300"><i class="fas fa-users mr-2"></i>Users</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-yellow-300"><i class="fas fa-cogs mr-2"></i>Settings</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
      <!-- Topbar -->
      <header class="bg-white shadow-md p-4 flex justify-between items-center">
        <h2 class="text-xl font-semibold">Create New Record</h2>
        <div class="flex items-center space-x-4">
          <img src="images/user1.jfif" class="w-10 h-10" alt="Admin profile picture">
          <span class="text-black">Admin Name</span>
          <button class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">
            <i class="fas fa-sign-out-alt mr-2"></i>Logout
          </button>
        </div>
      </header>

      <!-- Content Area -->
      <main class="flex-1 p-6 overflow-auto">
        <div class="bg-white p-6 rounded shadow-md max-w-2xl mx-auto">
          <h3 class="text-lg font-semibold mb-4">New Record Details</h3>

          <form action="InsertServlet" method="post" id="createForm">
            <div class="mb-4">
              <label for="name" class="block text-gray-700 mb-1">Full Name</label>
              <input type="text" id="name" name="name" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
            </div>
            <div class="mb-4">
              <label for="email" class="block text-gray-700 mb-1">Email Address</label>
              <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
            </div>
            <div class="mb-4">
              <label for="password" class="block text-gray-700 mb-1">Password</label>
              <input type="password" id="password" name="password" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
            </div>

            <div class="flex justify-end space-x-3">
              <a href="index.html" class="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600">Cancel</a>
              <button type="submit" class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">Create Record</button>
            </div>
          </form>
        </div>
      </main>
    </div>
  </div>

  <!-- JavaScript Validation -->
  <script>
    document.getElementById("createForm").addEventListener("submit", function(event) {
      const email = document.getElementById("email").value.trim();
      const password = document.getElementById("password").value.trim();
      const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

      let errorMessage = "";

      if (!emailRegex.test(email)) {
        errorMessage += "Invalid email format.\n";
      }

      if (password.length < 6) {
        errorMessage += "Password must be at least 6 characters long.";
      }

      if (errorMessage) {
        alert(errorMessage);
        event.preventDefault(); // prevent form submission
      }
    });
  </script>

  <%@ include file="./hf/footer.jsp" %>
</body>
</html>
