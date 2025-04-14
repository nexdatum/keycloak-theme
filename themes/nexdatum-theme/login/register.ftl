<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ${realmName!'Your Realm'}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/register.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/adaptive.css">
    <script src="${url.resourcesPath}/js/script.js" defer></script>
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body class="login-pf">
<div id="kc-container">

    <#-- Header -->
    <#include "header.html">

    <#-- Main Content -->
    <main id="kc-content">
        <form id="kc-form-register" action="${url.registrationAction}" method="post">
            <div class="container">
                <div id="kc-required-fields" class="alert alert-danger">
                    <p id="kc-alert-message"><span class="pficon pficon-error-circle-o" style="color: red;">*</span>
                        Required fields</p>
                </div>

                <h1 class="form-title">${msg("registerTitle")}</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <#-- Username input -->
                <label id="form-label" for="username">Username<span class="pficon pficon-error-circle-o"
                                                                    style="color: red;"> *</span>
                </label>
                <input type="text" placeholder="Enter Username" name="username" id="username" required>

                <#-- Password input -->
                <label id="form-label" for="password">Password<span class="pficon pficon-error-circle-o"
                                                                    style="color: red;"> *</span>
                </label>
                <label class="password-container">
                    <input id="password" type="password" placeholder="Enter Password" name="password"
                           class="form-control" required>
                    <button type="button" class="toggle-password">👁️</button>
                </label>

                <#-- Repeat Password input -->
                <label id="form-label" for="psw-repeat">Repeat Password<span class="pficon pficon-error-circle-o"
                                                                             style="color: red;"> *</span>
                </label>
                <label class="password-container">
                    <input id="psw-repeat" type="password" placeholder="Repeat Password" name="psw-repeat" required>
                    <button type="button" class="toggle-password">👁️</button>
                </label>

                <#-- Email input -->
                <label id="form-label" for="email">Email<span class="pficon pficon-error-circle-o"
                                                              style="color: red;"> *</span>
                </label>
                <input type="text" placeholder="Enter Email" name="email" id="email" required>

                <#-- First Name input -->
                <label id="form-label" for="firstName">First Name<span class="pficon pficon-error-circle-o"
                                                                       style="color: red;"> *</span>
                </label>
                <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required>

                <#-- Last Name input -->
                <label id="form-label" for="lastName">Last Name<span class="pficon pficon-error-circle-o"
                                                                     style="color: red;"> *</span>
                </label>
                <input type="text" placeholder="Enter Last Name" name="lastName" id="lastName" required>
                <hr>

                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a id="form-link" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>
                <button id="register-btn" type="submit" class="btn">Register</button>
            </div>

        </form>
    </main>

    <#-- Footer -->
<#--    <#include "copyright_footer.html">-->
</div>
</body>
</html>
