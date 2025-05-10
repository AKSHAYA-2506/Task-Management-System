<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Login</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: url('/Task.jpg');
      background-size: cover;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }

    .login-box {
      backdrop-filter: blur(10px);
      background-color: rgba(255, 255, 255, 0.1);
      border-radius: 15px;
      padding: 30px;
      width: 320px;
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
      border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .login-header {
      text-align: center;
      color: #ffffff;
      font-size: 24px;
      margin-bottom: 20px;
      font-weight: bold;
    }

    label {
      display: block;
      color: #ffffff;
      margin-top: 15px;
      font-size: 14px;
      font-weight: 600;
    }

    select, input[type="email"], input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: none;
      border-radius: 8px;
      outline: none;
      background: rgba(255, 255, 255, 0.2);
      color: #fff;
      font-size: 14px;
    }

    select option {
      background-color: #222;
      color: #fff;
    }

    .btn-login {
      margin-top: 25px;
      width: 100%;
      padding: 12px;
      background: linear-gradient(to right, #6a11cb, #2575fc);
      color: white;
      border: none;
      border-radius: 8px;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .btn-login:hover {
      background: linear-gradient(to right, #5e0acc, #1a6efc);
    }

    .message {
      margin-top: 20px;
      color: #00ff99;
      font-weight: bold;
      text-align: center;
    }

    .register-prompt {
      margin-top: 20px;
      color: #fff;
      text-align: center;
      font-size: 14px;
    }

    .register-prompt a {
      color: #00ffff;
      text-decoration: none;
      font-weight: bold;
    }

    .register-prompt a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <div class="login-box">
    <div class="login-header">Login</div>
    <form id="loginForm">
      <label for="role">User Role</label>
      <select name="role" id="role" required>
        <option value="">Select Role</option>
        <option value="admin">Admin</option>
        <option value="employee">Employee</option>
        <option value="manager">Manager</option>
      </select>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" required />

      <label for="password">Password</label>
      <input type="password" id="password" name="password" required />

      <button type="submit" class="btn-login">Login</button>
    </form>

    <div class="register-prompt">
      Don't have an account? <a href="/Register.html">Register</a>

    </div>
  </div>

  <div class="message" id="loginMessage"></div>

  <script>
    const loginForm = document.getElementById('loginForm');
    const loginMessage = document.getElementById('loginMessage');

    loginForm.addEventListener('submit', function(event) {
      event.preventDefault(); // Prevents form from redirecting

      const role = document.getElementById('role').value;
      const email = document.getElementById('email').value;

      loginMessage.textContent = Welcome, ${role}! Logged in with email: ${email};
    });
  </script>

</body>
</html>
