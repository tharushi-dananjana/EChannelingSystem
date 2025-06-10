<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>e-Channeling Appointment Dashboard</title>
  <link rel ="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/9449774243.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans">
  <div class="flex h-screen">
    <!-- Sidebar -->
    <aside class="w-64 bg-gray-700 shadow-md p-4">
      <h2 class="text-2xl font-bold mb-6 text-white">e-Channelling</h2>
      <nav>
        <ul>
          <li class="mb-4"><a href="#" class="text-white hover:text-white"><i class="fas fa-tachometer-alt mr-2"></i>Dashboard</a></li>
          <li class="mb-4"><a href="#" class="text-white hover:text-white"><i class="fas fa-calendar-alt mr-2"></i>Appointments</a></li>
          <li class="mb-4"><a href="#" class="text-white hover:text-white"><i class="fas fa-user-md mr-2"></i>Doctors</a></li>
          <li class="mb-4"><a href="#" class="text-white hover:text-white"><i class="fas fa-cogs mr-2"></i>Settings</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
      <!-- Topbar -->
      <header class="bg-white shadow-md p-4 flex justify-between items-center">
        <h1 class="text-xl font-semibold">Appointment Dashboard</h1>
        <div class="flex items-center space-x-4">
        <a href="home.jsp">
          <button class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">
            <i class="fas fa-sign-out-alt mr-2"></i>Logout
          </button>
          </a>
        </div>
      </header>

      <!-- Content Area -->
      <main class="flex-1 p-6 overflow-auto">
        <div class="flex justify-between items-center mb-6">
          <h2 class="text-lg font-semibold">Booked Appointments</h2>
          <a href="insertBooking.jsp">
          <button class="bg-blue-800 text-white px-4 py-2 rounded hover:bg-blue-600">
            <i class="fas fa-plus mr-2"></i>New Appointment
          </button>
          </a>
        </div>

        <div class="overflow-x-auto bg-white shadow-md rounded">
          <table class="min-w-full table-auto">
            <thead class="bg-gray-100 text-black">
              <tr>
                <th class="px-4 py-2 text-left">ID</th>
                <th class="px-4 py-2 text-left">Patient Name</th>
                <th class="px-4 py-2 text-left">Doctor</th>
                <th class="px-4 py-2 text-left">Specialization</th>
                <th class="px-4 py-2 text-left">Day Of The Week</th>
                <th class="px-4 py-2 text-left">Actions</th>
              </tr>
            </thead>
            <c:forEach var ="appointment" items ="${allappointments}">
            <tbody id="appointment-table-body">
              <tr class="border-t" id="appointment-1">
                <td class= "px-4 py-2">${appointment.id}</td>
                <td class="px-4 py-2">${appointment.patientName}</td>
                <td class="px-4 py-2">${appointment.doctorName}</td>
                <td class="px-4 py-2">${appointment.specialization}</td>
                <td class="px-4 py-2">${appointment.dayOfTheWeek}</td>
                <td class="px-4 py-2">
                
                    <div class="flex space-x-2 items-center">
                      <a href="updateBook.jsp?id=${appointment.id}&patientName=${appointment.patientName}&doctorName=${appointment.doctorName}&specialization=${appointment.specialization}&dayOfTheWeek=${appointment.dayOfTheWeek}">
                       <button class="bg-blue-600 text-white px-4 py-1 rounded hover:bg-blue-700">Edit<i class="fas fa-edit"></i></button>
                      </a>
                     <form action ="DeleteBookingServlet" method="post">
                      <input type="hidden" name="id" value="${appointment.id}"/>
                        <button class="bg-red-600 text-white px-4 py-1 rounded hover:bg-red-700">Delete<i class="fas fa-trash-alt"></i></button>
                     </form>
                    </div>
                 </td> 
              </tr>
             </c:forEach>
           </tbody>
          </table>
        </div>
      </main>
    </div>
  </div>
  </body>
</html>