<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>User Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assests/favicon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans">
  <div class="flex h-screen">
  
   	<aside class="w-64 bg-gray-700 shadow-md p-4">
      <h2 class="text-2xl font-bold mb-4 text-white">Admin Panel</h2>
      <nav>
        <ul>
          <li class="mb-2"><a href="#" class="text-white hover:text-white"><i class="fas fa-tachometer-alt mr-2"></i>Dashboard</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-white"><i class="fas fa-users mr-2"></i>Users</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-white"><i class="fas fa-cogs mr-2"></i>Settings</a></li>
        </ul>
      </nav>
    </aside>

  
    <div class="flex-1 flex flex-col">
    
   
      <header class="bg-white shadow-md p-4 flex justify-between items-center">
        <h1 class="text-xl font-semibold">User Record List</h1>
         <div class="flex items-center space-x-4">
         <div class="text-gray-700">
          	<a href="home.jsp" class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600 flex items-center">
  				<i class="fas fa-sign-out-alt mr-2"></i>Logout
			</a>
            
          </button>
         </div> 
      </header>
      
   
      <main class="flex-1 p-6 overflow-auto">
        <div class="flex justify-between items-center mb-4"> 
        </div>
        

        <div class="overflow-x-auto bg-white shadow-md rounded">
        <table class="w-full border-collapse">
            <thead>
                <tr class="bg-blue-800 text-white text-left">
                    <th class="py-3 px-4 border">ID</th>
                    <th class="py-3 px-4 border">Name</th>
                    <th class="py-3 px-4 border">Email</th>
                    <th class="py-3 px-4 border">Phone Number</th>
                    <th class="py-3 px-4 border">Role</th>

                </tr>
            </thead>
            <tbody>
               <c:forEach var="user" items="${allUser}">
    			<tr class="bg-gray-100 hover:bg-gray-200 border-b text-left">
        			<td class="py-2 px-4 border">${user.id}</td>
        			<td class="py-2 px-4 border">${user.name}</td>
        			<td class="py-2 px-4 border">${user.email}</td>
        			<td class="py-2 px-4 border">${user.phoneNo}</td>
        			<td class="py-2 px-4 border">${user.role}</td>
    			</tr>
				</c:forEach>
				
				<c:if test="${empty allUser}">
   			    	<tr>
        				<td colspan="5" class="text-center py-4 text-red-600">No user data found.</td>
   		 			</tr>
				</c:if>
				

            </tbody>
        </table>
    	</div>
    
    
</body>
</html>
