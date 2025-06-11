<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Appointment</title>
  <link rel ="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

  <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold mb-6 text-center text-gray-800">Update Appointment</h2>
    <%
        String id = request.getParameter("id");
        String patientName = request.getParameter("patientName");
        String doctorName = request.getParameter("doctorName");
        String specialization = request.getParameter("specialization");
        String dayOfTheWeek = request.getParameter("dayOfTheWeek");
    %>
    
    <form action="UpdateBookingServlet" method="post" class="space-y-4">
      
      <div>
        <label for="id" class="block text-sm font-medium text-gray-700">ID</label>
        <input type="text" name="id" id="id" value="<%=id%>" readonly
               class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
      </div>

      
      <!-- Patient Name -->
      <div>
        <label for="patientName" class="block text-sm font-medium text-gray-700">Patient Name</label>
        <input type="text" name="patientName" id="patientName"value="<%=patientName%>" required
               class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
      </div>

      <!-- Doctor Name -->
      <div>
        <label for="doctorName" class="block text-sm font-medium text-gray-700">Doctor Name</label>
        <input type="text" name="doctorName" id="doctorName" value="<%=doctorName%>"required
               class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
      </div>

      <!-- Specialization -->
     <div>
        <label for="specialization" class="block text-sm font-medium text-gray-700">Specialization</label>
        <select name="specialization" id="specialization" required
                class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
          <option value="">Select Specialization</option>
          <option value="Cardiology"<%= "Cardiology".equals(specialization) ? "selected" : "" %>>Cardiology</option>
          <option value="Dermatology"<%= "Dermatology".equals(specialization) ? "selected" : "" %>>Dermatology</option>
          <option value="Neurology"<%= "Neurology".equals(specialization) ? "selected" : "" %>>Neurology</option>
          <option value="Pediatrics"<%= "Pediatrics".equals(specialization) ? "selected" : "" %>>Pediatrics</option>
          <option value="General Medicine"<%= "General Medicine".equals(specialization) ? "selected" : "" %>>General Medicine</option>
        </select>
      </div>

      <!-- Day of the Week -->
      <div>
        <label for="dayOfTheWeek" class="block text-sm font-medium text-gray-700">Day</label>
        <select name="dayOfTheWeek" id="dayOfTheWeek" required
                class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
          <option value="">Select Day</option>
          <option value="Monday" <%= "Monday".equals(dayOfTheWeek) ? "selected" : "" %>>Monday</option>
          <option value="Tuesday"<%= "Tuesday".equals(dayOfTheWeek) ? "selected" : "" %>>Tuesday</option>
          <option value="Wednesday"<%= "Wednesday".equals(dayOfTheWeek) ? "selected" : "" %>>Wednesday</option>
          <option value="Thursday"<%= "Thursday".equals(dayOfTheWeek) ? "selected" : "" %>>Thursday</option>
          <option value="Friday"<%= "Friday".equals(dayOfTheWeek) ? "selected" : "" %>>Friday</option>
          <option value="Saturday"<%= "Saturday".equals(dayOfTheWeek) ? "selected" : "" %>>Saturday</option>
          <option value="Sunday"<%= "Sunday".equals(dayOfTheWeek) ? "selected" : "" %>>Sunday</option>
        </select>
      </div>

      <!-- Submit Button -->
      <div>
        <button type="submit"
                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg shadow">
          Update Appointment
        </button>
      </div>
    </form>
  </div>
</body>
</html>