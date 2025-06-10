<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Book Appointment</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    function validateForm() {
      const patientName = document.getElementById("patientName").value;
      const doctorName = document.getElementById("doctorName").value;

      const nameRegex = /^[A-Z][a-zA-Z\s]*$/;

      if (!nameRegex.test(patientName)) {
        alert("Patient name must start with a capital letter.");
        return false;
      }

      if (!nameRegex.test(doctorName)) {
        alert("Doctor name must start with a capital letter.");
        return false;
      }

      return true;
    }
  </script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

  <!-- Include Header -->
  <%@ include file="./hf/header.jsp" %>

  <main class="flex-grow flex items-center justify-center">
    <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-md mt-6">
      <h2 class="text-2xl font-bold mb-6 text-center text-gray-800">Book an Appointment</h2>

      <form action="InsertBookingServlet" method="post" class="space-y-4" onsubmit="return validateForm();">
        <div>
          <label for="patientName" class="block text-sm font-medium text-gray-700">Patient Name</label>
          <input type="text" name="patientName" id="patientName" required
                 class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500 shadow-sm">
        </div>

        <div>
          <label for="doctorName" class="block text-sm font-medium text-gray-700">Doctor Name</label>
          <input type="text" name="doctorName" id="doctorName" required
                 class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500 shadow-sm">
        </div>

        <div>
          <label for="specialization" class="block text-sm font-medium text-gray-700">Specialization</label>
          <select name="specialization" id="specialization" required
                  class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
            <option value="">Select Specialization</option>
            <option value="Cardiology">Cardiology</option>
            <option value="Dermatology">Dermatology</option>
            <option value="Neurology">Neurology</option>
            <option value="Pediatrics">Pediatrics</option>
            <option value="General Medicine">General Medicine</option>
          </select>
        </div>

        <div>
          <label for="dayOfTheWeek" class="block text-sm font-medium text-gray-700">Day</label>
          <select name="dayOfTheWeek" id="dayOfTheWeek" required
                  class="mt-1 w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
            <option value="">Select Day</option>
            <option value="Monday">Monday</option>
            <option value="Tuesday">Tuesday</option>
            <option value="Wednesday">Wednesday</option>
            <option value="Thursday">Thursday</option>
            <option value="Friday">Friday</option>
            <option value="Saturday">Saturday</option>
            <option value="Sunday">Sunday</option>
          </select>
        </div>

        <div>
          <button type="submit"
                  class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg shadow">
            Book Appointment
          </button>
        </div>
      </form>
    </div>
  </main>

  <!-- Include Footer -->
  <%@ include file="./hf/footer.jsp" %>
</body>
</html>