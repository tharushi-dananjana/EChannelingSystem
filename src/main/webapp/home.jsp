<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./hf/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>HEALTHCARE</title>
  <link rel="shortcut icon" href="images/pic1.jpg" type="image/x-icon">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800 font-sans">

  <!-- Hero Section -->
  <section class="bg-blue-300 py-16">
    <div class="container mx-auto px-4 text-center">
      <h2 class="text-4xl font-bold text-#0074b7 mb-4">Book Your Doctor Appointment Online</h2>
      <p class="text-lg mb-6 text-gray-700">Fast, secure, and convenient access to healthcare professionals.</p>
      <a href="#" class="bg-blue-500 text-white px-6 py-3 rounded hover:bg-blue-500 transition">Get Started</a>
    </div>
  </section>

  <!-- Image Section -->
  <section class="py-8 bg-white">
    <div class="container mx-auto px-4 text-center">
      <img src="images/pic4.png" alt="Healthcare Banner" class="mx-auto rounded shadow-lg">
    </div>
  </section>

<!-- Services Section -->
<section class="py-12 bg-blue-100">
  <div class="container mx-auto px-4">
    <h3 class="text-2xl font-bold text-center mb-8">Our Services</h3>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8 text-center">

      <!-- Service 1 -->
      <div class="p-6 border rounded shadow hover:shadow-lg transform transition-transform duration-300 hover:-translate-y-2 hover:scale-105">
        <h4 class="text-xl font-semibold mb-2">Find Doctors</h4>
        <div class="text-3xl font-bold text-blue-600 counter" data-target="500">0</div>
        <p class="text-gray-600 mt-2">Search for doctors by specialty, location, or availability.</p>
      </div>

      <!-- Service 2 -->
      <div class="p-6 border rounded shadow hover:shadow-lg transform transition-transform duration-300 hover:-translate-y-2 hover:scale-105">
        <h4 class="text-xl font-semibold mb-2">Book Appointments</h4>
        <div class="text-3xl font-bold text-blue-600 counter" data-target="1200">0</div>
        <p class="text-gray-600 mt-2">Schedule visits with just a few clicks, anytime, anywhere.</p>
      </div>

      <!-- Service 3 -->
      <div class="p-6 border rounded shadow hover:shadow-lg transform transition-transform duration-300 hover:-translate-y-2 hover:scale-105">
        <h4 class="text-xl font-semibold mb-2">View Records</h4>
        <div class="text-3xl font-bold text-blue-600 counter" data-target="350">0</div>
        <p class="text-gray-600 mt-2">Access your medical history securely from any device.</p>
      </div>

    </div>
  </div>
</section>


<!-- Specializations Section -->
<section class="py-12 bg-blue-900">
  <div class="container mx-auto px-4">
    <h3 class="text-3xl font-bold text-center mb-8 text-black-700">Channeling Doctor Specializations</h3>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">

      <!-- Consultant Cardiologist Flip Card -->
<div class="relative h-64 cursor-pointer" style="perspective: 1000px;" onclick="flipCard('cardiologistFlip')">
  <div id="cardiologistFlip"
       class="transform transition-transform duration-700 transform-style-preserve-3d w-full h-full relative"
       style="transform-style: preserve-3d;">
    <!-- Front -->
    <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center"
         style="backface-visibility: hidden;">
      <i class="fas fa-heartbeat text-3xl text-blue-600 mb-4"></i>
      <h4 class="text-xl font-semibold mb-2">Consultant Cardiologist</h4>
      <p class="text-gray-600 text-center">Heart and blood vessel specialists.</p>
    </div>
    <!-- Back -->
    <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden flex flex-col justify-center items-center"
         style="transform: rotateY(180deg); backface-visibility: hidden;">
      <h4 class="text-xl font-bold text-orange-700 mb-4">Cardiologist Doctors</h4>
      <ul class="text-sm text-gray-700 space-y-1 text-center">
        <li><strong>Dr. Samantha Silva</strong> – National Heart Center</li>
        <li><strong>Dr. Roshan Kumar</strong> – City Cardio Clinic</li>
        <li><strong>Dr. Nadeesha Wijesinghe</strong> – Heart Care Hospital</li>
      </ul>
      <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
    </div>
  </div>
</div>





      <!-- Radiology Flip Card -->
      <div class="relative h-64 perspective cursor-pointer group" onclick="flipCard('radiologyFlip')">
        <div id="radiologyFlip"
             class="transition-transform duration-700 transform-style-preserve-3d w-full h-full relative
                    group-hover:-translate-y-2 group-hover:scale-105 group-hover:shadow-lg
                    transition-transform duration-300">
          <!-- Front -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center">
            <i class="fas fa-x-ray text-3xl text-blue-600 mb-4"></i>
            <h4 class="text-xl font-semibold mb-2">Radiology</h4>
            <p class="text-gray-600 text-center">Medical imaging and diagnostics.</p>
          </div>
          <!-- Back -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden transform rotate-y-180 flex flex-col justify-center items-center">
            <h4 class="text-xl font-bold text-orange-700 mb-4">Radiology Doctors</h4>
            <ul class="text-sm text-gray-700 space-y-1 text-center">
              <li><strong>Dr. Kasun Perera</strong> – Radiology Center</li>
              <li><strong>Dr. Anjali Fernando</strong> – City Imaging</li>
              <li><strong>Dr. Ruwan Jayawardena</strong> – Diagnostic Hub</li>
            </ul>
            <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
          </div>
        </div>
      </div>

      <!-- Orthopedics Flip Card -->
      <div class="relative h-64 perspective cursor-pointer group" onclick="flipCard('orthopedicsFlip')">
        <div id="orthopedicsFlip"
             class="transition-transform duration-700 transform-style-preserve-3d w-full h-full relative
                    group-hover:-translate-y-2 group-hover:scale-105 group-hover:shadow-lg
                    transition-transform duration-300">
          <!-- Front -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center">
            <i class="fas fa-bone text-3xl text-blue-600 mb-4"></i>
            <h4 class="text-xl font-semibold mb-2">Orthopedics</h4>
            <p class="text-gray-600 text-center">Bone, joint, and muscle care.</p>
          </div>
          <!-- Back -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden transform rotate-y-180 flex flex-col justify-center items-center">
            <h4 class="text-xl font-bold text-orange-700 mb-4">Orthopedics Doctors</h4>
            <ul class="text-sm text-gray-700 space-y-1 text-center">
              <li><strong>Dr. Lakshan Silva</strong> – Bone & Joint Clinic</li>
              <li><strong>Dr. Ishara Perera</strong> – Orthopedic Care Center</li>
              <li><strong>Dr. Nimal Jayasinghe</strong> – Trauma Hospital</li>
            </ul>
            <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
          </div>
        </div>
      </div>

      <!-- General Medicine Flip Card -->
      <div class="relative h-64 perspective cursor-pointer group" onclick="flipCard('generalMedicineFlip')">
        <div id="generalMedicineFlip"
             class="transition-transform duration-700 transform-style-preserve-3d w-full h-full relative
                    group-hover:-translate-y-2 group-hover:scale-105 group-hover:shadow-lg
                    transition-transform duration-300">
          <!-- Front -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center">
            <i class="fas fa-stethoscope text-3xl text-blue-600 mb-4"></i>
            <h4 class="text-xl font-semibold mb-2">General Medicine</h4>
            <p class="text-gray-600 text-center">Comprehensive medical care.</p>
          </div>
          <!-- Back -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden transform rotate-y-180 flex flex-col justify-center items-center">
            <h4 class="text-xl font-bold text-orange-700 mb-4">General Medicine Doctors</h4>
            <ul class="text-sm text-gray-700 space-y-1 text-center">
              <li><strong>Dr. Chaminda Silva</strong> – General Clinic</li>
              <li><strong>Dr. Malini Fernando</strong> – Health Center</li>
              <li><strong>Dr. Asela Gunawardena</strong> – Family Medical Care</li>
            </ul>
            <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
          </div>
        </div>
      </div>
      
      <!-- Consultant Pediatrician Flip Card -->
      <div class="relative h-64 perspective cursor-pointer group" onclick="flipCard('consultantPediatricianFlip')">
        <div id="consultantPediatricianFlip"
             class="transition-transform duration-700 transform-style-preserve-3d w-full h-full relative
                    group-hover:-translate-y-2 group-hover:scale-105 group-hover:shadow-lg
                    transition-transform duration-300">
          <!-- Front -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center">
            <i class="fas fa-child text-3xl text-blue-600 mb-4"></i>
            <h4 class="text-xl font-semibold mb-2">Consultant Pediatrician</h4>
            <p class="text-gray-600 text-center">Comprehensive medical care.</p>
          </div>
          <!-- Back -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden transform rotate-y-180 flex flex-col justify-center items-center">
            <h4 class="text-xl font-bold text-orange-700 mb-4">Consultant Pediatrician Doctors</h4>
            <ul class="text-sm text-gray-700 space-y-1 text-center">
              <li><strong>Dr. Chaminda Silva</strong> – General Clinic</li>
              <li><strong>Dr. Malini Fernando</strong> – Health Center</li>
              <li><strong>Dr. Asela Gunawardena</strong> – Family Medical Care</li>
            </ul>
            <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
          </div>
        </div>
      </div>

      <!-- Pediatrics Flip Card -->
      <div class="relative h-64 perspective cursor-pointer group" onclick="flipCard('pediatricsFlip')">
        <div id="pediatricsFlip"
             class="transition-transform duration-700 transform-style-preserve-3d w-full h-full relative
                    group-hover:-translate-y-2 group-hover:scale-105 group-hover:shadow-lg
                    transition-transform duration-300">
          <!-- Front -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-100 backface-hidden flex flex-col justify-center items-center">
            <i class="fas fa-user-nurse text-3xl text-blue-600 mb-4"></i>
            <h4 class="text-xl font-semibold mb-2">Pediatrics</h4>
            <p class="text-gray-600 text-center">Health care for children and infants.</p>
          </div>
          <!-- Back -->
          <div class="absolute w-full h-full rounded p-6 shadow bg-blue-300 backface-hidden transform rotate-y-180 flex flex-col justify-center items-center">
            <h4 class="text-xl font-bold text-orange-700 mb-4">Pediatric Doctors</h4>
            <ul class="text-sm text-gray-700 space-y-1 text-center">
              <li><strong>Dr. Nadeesha Wijeratne</strong> – Child Care Hospital</li>
              <li><strong>Dr. Malsha Fernando</strong> – Kids Health Clinic</li>
              <li><strong>Dr. Suranga Perera</strong> – Infant Care Center</li>
            </ul>
            <p class="mt-4 text-sm text-gray-500">(Click to flip back)</p>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>




  <%@ include file="./hf/footer.jsp" %>

<script>
  function flipCard(id) {
    const card = document.getElementById(id);
    if (card.style.transform.includes('rotateY(180deg)')) {
      card.style.transform = 'rotateY(0deg) translateY(0)';
    } else {
      card.style.transform = 'rotateY(180deg) translateY(-1rem)';
    }
  }
</script>
  
  
  
<!-- JavaScript: Intersection Observer + Counter Logic -->
<script>
  const counters = document.querySelectorAll('.counter');
  const speed = 50;

  // Function to run count up
  function animateCounter(counter) {
    const target = +counter.getAttribute('data-target');
    let count = 0;

    const increment = Math.ceil(target / speed);

    const update = () => {
      count += increment;
      if (count < target) {
        counter.innerText = count;
        requestAnimationFrame(update);
      } else {
        counter.innerText = target;
      }
    };
    update();
  }

  // Reset the counter to 0
  function resetCounter(counter) {
    counter.innerText = "0";
  }

  // Intersection Observer
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      const counter = entry.target;
      if (entry.isIntersecting) {
        resetCounter(counter);      // Reset every time
        animateCounter(counter);    // Start animation
      }
    });
  }, {
    threshold: 0.5  // Trigger when 50% of the element is visible
  });

  counters.forEach(counter => {
    observer.observe(counter);
  });
</script>



  <!-- Tailwind custom utility for 3D (can also go into tailwind.config.js) -->
  <style>
    .perspective {
      perspective: 1000px;
    }
    .transform-style-preserve-3d {
      transform-style: preserve-3d;
    }
    .backface-hidden {
      backface-visibility: hidden;
    }
    .rotate-y-180 {
      transform: rotateY(180deg);
    }
  </style>

</body>
</html>
