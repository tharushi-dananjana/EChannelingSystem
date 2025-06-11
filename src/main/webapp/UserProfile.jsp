<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>User Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assets/favicon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-100 font-sans min-h-screen flex items-center justify-center">
 
  <div class="bg-white shadow-lg rounded-2xl w-full max-w-lg p-8">
    
    <div class="mb-6 text-center">
      <h1 class="text-3xl font-bold text-blue-800">User Profile</h1>
    </div>
    
    <div class="space-y-4 mb-6">
      <div class="bg-gray-200 p-4 rounded-lg">
        <h2 class="text-lg font-semibold text-gray-700">ID: <span class="text-gray-900">${user.id}</span></h2>
      </div>
      <div class="bg-gray-200 p-4 rounded-lg">
        <h2 class="text-lg font-semibold text-gray-700">Name: <span class="text-gray-900">${user.name}</span></h2>
      </div>
      <div class="bg-gray-200 p-4 rounded-lg">
        <h2 class="text-lg font-semibold text-gray-700">Email: <span class="text-gray-900">${user.email}</span></h2>
      </div>
      <div class="bg-gray-200 p-4 rounded-lg">
        <h2 class="text-lg font-semibold text-gray-700">Phone No: <span class="text-gray-900">${user.phoneNo}</span></h2>
      </div>
      <div class="bg-gray-200 p-4 rounded-lg">
        <h2 class="text-lg font-semibold text-gray-700">Role: <span class="text-gray-900">${user.role}</span></h2>
      </div>
    </div>
    
    <div class="flex gap-4">
      <a href="UserUpdate.jsp?id=${user.id}&name=${user.name}&email=${user.email}&phoneNo=${user.phoneNo}&role=${user.role}" class="flex-1 bg-blue-700 text-white py-2 rounded-lg text-center text-lg font-semibold hover:bg-blue-600 transition">Update</a>
      
      <form action="UserDeleteServlet" method="post" class="flex-1">
        <input type="hidden" name="id" value="${user.id}">
        <button type="submit" class="w-full bg-red-600 text-white py-2 rounded-lg text-lg font-semibold hover:bg-red-500 transition">Delete</button>
      </form>
      
      <a href="UserDashboardServlet" class="flex-1 bg-green-700 text-white py-2 rounded-lg text-center text-lg font-semibold hover:bg-green-600 transition">View Dashboard</a>
    </div>
  </div>
</body>
</html>