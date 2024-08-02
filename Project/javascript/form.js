// function validateForm() {
//     var email= document.getElementsByName('email')[0].value;
//     var password = document.getElementsByName('password')[0].value;
//     var atposition=email.indexOf("@");
//     var dotposition=email.lastIndexOf(".");
//     if(email==null || email == "") {
//         alert("please enter your email address");
//         return false;
//     }
//     else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
//         alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);
//         return false;
//     }
//     else if(password.length<=8){
//         alert("password should be atleast of 8 characters!");
//         return false;
//     }
//     else{
//         // alert('ok')
//         location.replace("portfolio.html");
//     }
//     let obj = {
//         email:email
//     };
//     alert(JSON.stringify(obj));
//     // document.getElementById("f1").reset();
//     return false;
// }
const form = document.getElementById('form-container');
const email = document.getElementById('email');
const password = document.getElementById('password');
form.addEventListener('submit',function(event){
    event.preventDefault();
    if(validateForm()){
        const mockData = {
            email: email.value.trim(),
            password: password.value.trim()
        };
        fetch('https://reqres.in/api/login',{
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body:JSON.stringify(mockData)
        })
        .then(response => response.json())
        .then(data => {
            if(data){
                console.log(data);
                localStorage.setItem('sign-In', JSON.stringify(data.token));
            }
            else{
                alert('Invalid Email and password');
            }
        })
    }
})


function validateForm() {
    var storedEmail = localStorage.getItem('email');
    var storedPassword = localStorage.getItem('password');
    var email = document.getElementById('email');
    var password = document.getElementById('password');
    if(email.value !== storedEmail || password.value !== storedPassword){
        alert("Invalid email or password");
    }
else{
    location.replace("/app1/portfolio.html");
}
let obj = {
    email:storedEmail
};
alert(JSON.stringify(obj));
return false;
}









