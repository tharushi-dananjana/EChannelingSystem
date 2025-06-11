<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Update New Record</title>
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
        <h2 class="text-xl font-semibold">Update New Record</h2>
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
          <h3 class="text-lg font-semibold mb-4">Update Details</h3>
<%

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    

%>


    <form action="UpdateServlet" method="post">
       <div class="mb-4">
        <label for="name" class="block text-gray-700 mb-1">ID</label>
        <input type="text" id="id" name="id" value= "<%=id%>" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" readonly>
      </div>
      
      <div class="mb-4">
        <label for="name" class="block text-gray-700 mb-1">Full Name</label>
        <input type="text" id="name" name="name" value= "<%=name%>" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
      </div>
      <div class="mb-4">
        <label for="email" class="block text-gray-700 mb-1">Email Address</label>
        <input type="email" id="email" name="email" value= "<%=email%>" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
      </div>
      
      <div class="mb-4">
        <label for="password" class="block text-gray-700 mb-1">Password</label>
        <input type="password" id="password" name="password" value= "<%=password%>" class="w-full px-4 py-2 border rounded focus:outline-none focus:ring-2 focus:ring-blue-400" required>
      </div>
      
      <div class="flex justify-end space-x-3">
        <a href="index.html" class="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600">Cancel</a>
        <button type="submit" class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">Update</button>
      </div>
    </form>
    
    
</body>
</html>