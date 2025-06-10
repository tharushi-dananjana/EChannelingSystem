<header class="bg-gray-800 text-white shadow-md">
  <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">

    <!-- Logo -->
    <a href="index.jsp" class="text-3xl font-bold flex items-center space-x-2">
      <i class="fas fa-stethoscope text-white text-4xl"></i>
      <span class="text-white">Health Care</span>
    </a>

    <!-- Navigation Links (Desktop) -->
    <nav class="hidden md:flex space-x-8 text-lg">
      <a href="home.jsp" class="hover:text-gray-300 transition">Home</a>
      <a href="doctor/DoctorLogin.jsp" class="hover:text-gray-300 transition">Doctors</a>
      <a href="insertBooking.jsp" class="hover:text-gray-300 transition">Appointments</a>
      <a href="contactUs.jsp" class="hover:text-gray-300 transition">Contact</a>
    </nav>

    <!-- Mobile Hamburger Menu Button -->
    <button class="md:hidden text-white text-2xl" id="mobile-menu-button">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Login and Sign In Buttons -->
    <div class="flex items-center space-x-4">
      <!-- Login Button -->
      <a href="UserLogin.jsp" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold px-6 py-3 rounded-full shadow-lg transform transition duration-200 ease-in-out hover:scale-105">
        Login
      </a>
      
      <!-- Sign In Button -->
      <a href="UserRegister.jsp" class="bg-green-600 hover:bg-green-700 text-white font-semibold px-6 py-3 rounded-full shadow-lg transform transition duration-200 ease-in-out hover:scale-105">
        Sign In
      </a>
    </div>

  </div>

  <!-- Mobile Menu -->
  <div class="md:hidden bg-gray-700 text-white w-full hidden" id="mobile-menu">
    <nav class="flex flex-col items-center py-4 space-y-4">
      <a href="home.jsp" class="hover:text-gray-300">Home</a>
      <a href="doctors.jsp" class="hover:text-gray-300">Doctors</a>
      <a href="appointments.jsp" class="hover:text-gray-300">Appointments</a>
      <a href="contact.jsp" class="hover:text-gray-300">Contact</a>
    </nav>
  </div>

</header>
