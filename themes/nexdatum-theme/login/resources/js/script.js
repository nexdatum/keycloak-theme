
// Password visibility toggle
document.addEventListener("DOMContentLoaded", () => {
    const toggleButtons = document.querySelectorAll(".toggle-password");

    toggleButtons.forEach((button) => {
        button.addEventListener("click", () => {
            const passwordField = button.previousElementSibling;

            if (passwordField && passwordField.type === "password") {
                passwordField.type = "text";
                button.textContent = "🙈";
            } else if (passwordField) {
                passwordField.type = "password";
                button.textContent = "👁️";
            }
        });
    });
});
