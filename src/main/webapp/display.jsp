<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Dashboard</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/9449774243.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-300 font-sans">
  <div class="flex h-screen">
    <!-- Sidebar -->
    <aside class="w-64 bg-gray-700 shadow-md p-4">
      <h2 class="text-2xl font-bold mb-4 text-white">Admin Panel</h2>
      <nav>
        <ul>
          <li class="mb-2"><a href="#" class="text-white hover:text-yellow-300"><i class="fas fa-tachometer-alt mr-2"></i>Dashboard</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-yellow-300"><i class="fas fa-users mr-2"></i>Users</a></li>
          <li class="mb-2"><a href="#" class="text-white hover:text-yellow-300"><i class="fas fa-cogs mr-2"></i>Settings</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
      <!-- Topbar -->
      <header class="bg-white shadow-md p-4 flex justify-between items-center">
        <h2 class="text-xl font-semibold">Admin Details</h2>
        <div class="flex items-center space-x-4">
          <img src="images/user1.jfif" class="w-10 h-10 rounded-full" alt="Admin Profile" />
          <span class="text-black">Admin Name</span>
          <a href="home.jsp">
            <button class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">
              <i class="fas fa-sign-out-alt mr-2"></i>Logout</button>
          </a>
        </div>
      </header>

      <!-- Content Area -->
      <main class="flex-1 p-6 overflow-auto">
        <div class="flex justify-between items-center mb-4">
          <h2 class="text-lg font-semibold">Records List</h2>
          <a href="insert.jsp">
            <button class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">
              <i class="fas fa-plus mr-2"></i>Create New Recored</button>
          </a>
        </div>
        
        <!-- ✅ Search Form -->
	
		<input type="text" id="searchInput" placeholder="Search ID"
			class="border px-3 py-2 rounded mr-2" />
		<button type="submit"
			class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-600">Search</button>
	

        <div class="overflow-x-auto bg-white shadow-md rounded-lg">
          <table class="min-w-full divide-y divide-gray-300 border border-gray-300 rounded-lg">
            <thead class="bg-gray-200">
              <tr>
                <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">ID</th>
                <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Name</th>
                <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Email</th>
                <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Password</th>
                <th class="px-6 py-3 text-left text-sm font-semibold text-gray-700">Action</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
              <c:forEach var="channelling" items="${allChannellings}">
                <tr class="hover:bg-gray-100">
                  <td class="px-6 py-4 text-gray-800">${channelling.id}</td>
                  <td class="px-6 py-4 text-gray-800">${channelling.name}</td>
                  <td class="px-6 py-4 text-gray-800">${channelling.email}</td>
                  <td class="px-6 py-4 text-gray-800">${channelling.password}</td>
                  <td class="px-6 py-4 space-x-2">
                    <a href="update.jsp?id=${channelling.id}&name=${channelling.name}&email=${channelling.email}&password=${channelling.password}">
                      <button class="bg-blue-600 text-white px-4 py-1 rounded hover:bg-blue-700">Update<i class="fas fa-edit"></i></button>
                    </a>
                    <form action="DeleteServlet" method="post" class="inline">
                      <input type="hidden" name="id" value="${channelling.id}" />
                      <button class="bg-red-600 text-white px-4 py-1 rounded hover:bg-red-700">Delete<i class="fas fa-trash-alt"></i></button>
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </main>
    </div>
  </div>
  <script>
function filterTable() {
    var input = document.getElementById("searchInput");
    var filter = input.value.toUpperCase();
    var table = document.querySelector("table");
    var tr = table.getElementsByTagName("tr");

    for (var i = 1; i < tr.length; i++) { // skip header
        var td = tr[i].getElementsByTagName("td");
        var rowMatches = false;

        for (var j = 0; j < td.length; j++) {
            if (td[j]) {
                var txtvalue = td[j].textContent || td[j].innerText;
                if (txtvalue.toUpperCase().indexOf(filter) > -1) {
                    rowMatches = true;
                    break;
                }
            }
        }

        tr[i].style.display = rowMatches ? "" : "none";
    }
}
document.getElementById("searchInput").addEventListener("input" , filterTable);	
</script>
  
</body>
</html>
