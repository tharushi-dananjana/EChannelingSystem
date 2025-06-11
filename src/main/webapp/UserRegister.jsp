<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gray-300 font-sans min-h-screen flex flex-col">

    <!-- Header Include with Spacing -->
    <header class="mb-4">
        <jsp:include page="./hf/header.jsp" />
    </header>

    <!-- Main Content Area -->
    <main class="flex-grow flex items-center justify-center px-4 py-8">
        <!-- Register Card -->
        <div class="bg-white shadow-lg rounded-lg w-full max-w-md p-8">
            <!-- Title -->
            <div class="mb-6 text-center">
                <h1 class="text-2xl font-bold text-blue-800">Create Account</h1>
            </div>

            <!-- Form -->
            <form action="UserInsertServlet" method="post" id="createForm">
                <!-- Full Name -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Full Name</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-user text-gray-500 mr-2"></i>
                        <input type="text" name="name" class="w-full focus:outline-none" required />
                    </div>
                </div>

                <!-- Email -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Email</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-envelope text-gray-500 mr-2"></i>
                        <input type="email" name="email" id="email" class="w-full focus:outline-none" required />
                    </div>
                </div>

                <!-- Phone No -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Phone No</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-phone text-gray-500 mr-2"></i>
                        <input type="text" name="phoneNo" id="phoneNo" class="w-full focus:outline-none" required />
                    </div>
                </div>

                <!-- Role -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Role</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-user-tag text-gray-500 mr-2"></i>
                        <select name="role" class="w-full bg-white focus:outline-none" required>
                            <option value="" disabled selected>Select role</option>
                            <option value="Admin">Admin</option>
                            <option value="Doctor">Doctor</option>
                            <option value="Patient">Patient</option>
                        </select>
                    </div>
                </div>

                <!-- Password -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1">Password</label>
                    <div class="flex items-center border border-gray-300 rounded px-3 py-2 bg-white">
                        <i class="fas fa-lock text-gray-500 mr-2"></i>
                        <input type="password" name="password" id="password" placeholder="••••••••" class="w-full focus:outline-none" required />
                    </div>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="w-full bg-blue-800 text-white py-2 rounded hover:bg-blue-700 transition duration-200">
                    <i class="fas fa-user-plus mr-2"></i>Register
                </button>
            </form>

            <!-- Footer Text -->
            <div class="mt-6 text-sm text-center text-gray-600">
                Already have an account?
                <a href="UserLogin.jsp" class="text-blue-700 hover:underline font-medium">Login</a>
            </div>
        </div>
    </main>

    <!-- JavaScript Validation -->
    <script>
        document.getElementById("createForm").addEventListener("submit", function(event) {
            const email = document.getElementById("email").value.trim();
            const password = document.getElementById("password").value.trim();
            const phoneNo = document.getElementById("phoneNo").value.trim();

            const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            const phoneRegex = /^[0-9]{10}$/;

            let errorMessage = "";

            if (!emailRegex.test(email)) {
                errorMessage += "Invalid email format.\n";
            }

            if (!phoneRegex.test(phoneNo)) {
                errorMessage += "Phone number must be 10 digits.\n";
            }

            if (password.length < 6) {
                errorMessage += "Password must be at least 6 characters long.\n";
            }

            if (errorMessage) {
                alert(errorMessage);
                event.preventDefault();
            }
        });
    </script>

    <!-- Footer Include with Spacing -->
    <footer class="mt-6">
        <jsp:include page="./hf/footer.jsp" />
    </footer>

</body>
</html>
