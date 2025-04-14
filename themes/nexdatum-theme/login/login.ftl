<#-- Custom login.ftl using base template layout -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ${realmName!'FlyLog'}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
</head>
<body class="login-pf">
<div id="kc-container">
    <#-- Header (optional) -->
    <header>
        <div id="kc-header" class="navbar navbar-inverse navbar-fixed-top">
            <div id="kc-header-wrapper">
                <span class="navbar-brand">
                    <img src="${url.resourcesPath}/img/nexdatum-logo-color.svg" alt="Logo"
                         style="height: auto; width: 200px;">
                </span>
            </div>
        </div>
    </header>
    <main id="kc-content">
        <div id="kc-form">
            <#-- Login Form -->
            <form id="kc-form-login" action="${url.loginAction}" method="post">
                <div class="title-container">
                    <h3 class="form-title">Sign in to your account</h3>
                </div>

                <div class="container">
                    <label for="username"><b>Username or email</b></label>
                    <input id="username" type="text" placeholder="Enter Username" name="username" class="form-control"
                           required>

                    <label for="password"><b>Password</b></label>
                    <label class="password-container">
                        <input id="password" type="password" placeholder="Enter Password" name="password"
                               class="form-control" required>
                        <button type="button" id="togglePassword" class="toggle-password">👁️</button>
                    </label>

                    <button type="submit" class="btn">Login</button>
                    <label>
                        <input id="checkbox" type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                </div>
            </form>
        </div>
    </main>
    <#-- Footer (optional) -->
    <footer id="kc-footer">
        <div id="kc-footer-wrapper">
            <div id="kc-app-logo">
                <img src="${url.resourcesPath}/img/nexdatum-logo-white.svg" alt="Logo"
                     style="height: auto; width: 160px;">
            </div>
            <div id="kc-info">
                <p id="kc-copyright">
                    &copy; 2025 All Rights Reserved | <span class="font-gaoel">NEXDATUM</span> Ltd.
                </p>
            </div>
        </div>
    </footer>
</div>
</body>
<#-- Password visibility toggle -->
<script>
    const togglePassword = document.getElementById("togglePassword");
    const passwordField = document.getElementById("password");

    togglePassword.addEventListener("click", function () {
        const type = passwordField.type === "password" ? "text" : "password";
        passwordField.type = type;

        this.textContent = type === "password" ? "👁️" : "🙈";
    });
</script>
</html>
