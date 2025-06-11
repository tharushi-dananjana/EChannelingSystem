<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
    <title>User Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assests/favicon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
    
  </head>


<body class="bg-gray-300 font-sans min-h-screen flex items-center justify-center">

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phoneNo = request.getParameter("phoneNo");
	String role = request.getParameter("role");
	%>

  <div class="bg-white shadow-lg rounded-lg w-full max-w-md p-8">
  
   
    <div class="mb-6 text-center">
      <h1 class="text-2xl font-bold text-blue-800">Update Profile</h1>
    </div>
    
    
    <form action="UserUpdateServlet" method="post">
   
      <div class="mb-4">
        <label class="block text-gray-700 font-semibold mb-1">ID</label>
        <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
          <i class="fas fa-user text-gray-500 mr-2"></i>
          <input type="text" id="id" name="id" value="<%=id %>"  class="w-full focus:outline-none" required />
        </div>
      </div>
      

      <div class="mb-4">
        <label class="block text-gray-700 font-semibold mb-1">Full Name</label>
        <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
          <i class="fas fa-user text-gray-500 mr-2"></i>
           <input type="text" id="name" name="name" value="<%=name %>" class="w-full focus:outline-none" required />
        </div>
      </div>

      
      <div class="mb-4">
        <label class="block text-gray-700 font-semibold mb-1">Email</label>
        <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
          <i class="fas fa-envelope text-gray-500 mr-2"></i>
             <input type="text" id="email" name="email" value="<%=email %>" class="w-full focus:outline-none" required />
        </div>
      </div>
      
      
      <div class="mb-4">
        <label class="block text-gray-700 font-semibold mb-1">Phone No</label>
        <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
          <i class="fas fa-envelope text-gray-500 mr-2"></i>
             <input type="text" id="phoneNo" name="phoneNo" value="<%=phoneNo %>" class="w-full focus:outline-none" required />
        </div>
      </div>

      
      <div class="mb-4">
        <label class="block text-gray-700 font-semibold mb-1">Role</label>
        <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
          <i class="fas fa-user-tag text-gray-500 mr-2"></i>
          <select id="role" name="role" value="<%=phoneNo %>" class="w-full bg-white focus:outline-none">
            <option value="" disabled selected>Select role</option>
            <option value="Admin">Admin</option>
            <option value="Doctor">Doctor</option>
            <option value="Patient">Patient</option>
          </select>
        </div>
      </div>
    
      
      
      
       <!-- Submit Button -->
      <button type="submit" class="w-full bg-blue-800 text-white py-2 rounded hover:bg-blue-700 transition duration-200">
        <i class="fas fa-user-plus mr-2"></i>Submit
        <a href="UserDashboardServlet" class="text-blue-700 hover:underline font-medium"></a>
      </button>
    </form>
      
     
   </div>
</body>
</html>