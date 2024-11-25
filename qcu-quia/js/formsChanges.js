const loginForm = document.getElementById('loginForm');
const registrationForm = document.getElementById('registrationForm');
const registerButton = document.querySelector('.button-reg');
const loginButton = document.querySelector('.button-log');
const togglePassword = document.querySelector('#togglePassword');
const passwordInput1 = document.querySelector('#password1');
const passwordInput2 = document.querySelector('#password2');
const icon = togglePassword.querySelector('svg');

registerButton.addEventListener('click', () => {
    registerButton.classList.add('clicked'); 
    loginForm.style.display = 'none';
    registrationForm.style.display = 'block';
    loginButton.classList.remove('clicked'); 
});

loginButton.addEventListener('click', () => {
    loginButton.classList.add('clicked');  
    loginForm.style.display = 'block';
    registrationForm.style.display = 'none';
    registerButton.classList.remove('clicked'); 
});


togglePassword.addEventListener('click', () => {
    const type = passwordInput1.type === 'password' ? 'text' : 'password';
    passwordInput1.type = type;
    passwordInput2.type = type;

    const path = icon.querySelector('path');
    path.setAttribute('d', type === 'password' 
        ? 'M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z' 
        : 'M3 6l18 18M21 2l-18 18');
});

