<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Tailwind CSS & Font Awesome -->
   <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans min-h-screen flex flex-col">

    <!-- Include Header -->
    <div class="mb-6">
        <%@ include file="./hf/header.jsp" %>
    </div>

    <!-- Page Content -->
    <div class="flex-grow flex items-center justify-center">
        <div class="bg-white shadow-lg rounded-lg w-full max-w-md p-8">
            <!-- Header -->
            <div class="mb-6 text-center">
                <h1 class="text-2xl font-bold text-blue-800">User Login</h1>
            </div>
            
            <!-- Form -->
            <form action="UserLoginServlet" method="post" id="loginForm">
                <!-- Email -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Gmail</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-envelope text-gray-500 mr-2"></i>
                        <input type="text" id="email" name="email" class="w-full focus:outline-none" required />
                    </div>
                </div>
                
                <!-- Password -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Password</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-lock text-gray-500 mr-2"></i>
                        <input type="password" id="password" name="password" class="w-full focus:outline-none" required />
                    </div>
                </div>
                
                <!-- Login Button -->
                <button type="submit" class="w-full bg-blue-800 text-white py-2 rounded hover:bg-blue-700 transition duration-200 mb-4">
                    <i class="fas fa-sign-in-alt mr-2"></i>Login
                </button>
            </form>

            <!-- Doctor Login Link -->
            <a href="doctor/DoctorLogin.jsp" class="w-full inline-block text-center bg-green-700 text-white py-2 rounded hover:bg-green-600 transition duration-200 mb-2">
                <i class="fas fa-user-md mr-2"></i>Doctor Login
            </a>

            <!-- Admin Login Link -->
            <a href="login.jsp" class="w-full inline-block text-center bg-red-700 text-white py-2 rounded hover:bg-red-600 transition duration-200">
                <i class="fas fa-user-shield mr-2"></i>Admin Login
            </a>
            
            <!-- Footer Text -->
            <div class="mt-6 text-sm text-center text-gray-600">
                Don't have an account?
                <a href="UserRegister.jsp" class="text-blue-700 hover:underline font-medium">Register</a>
            </div>
        </div>
    </div>

    <!-- Include Footer -->
    <div class="mt-6">
        <%@ include file="./hf/footer.jsp" %>
    </div>

    <!-- JS Form Validation -->
    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            const email = document.getElementById("email").value.trim();
            const password = document.getElementById("password").value;

            if (!email || !password) {
                event.preventDefault();
                alert("Please fill in all fields.");
            }
        });
    </script>

</body>
</html>
