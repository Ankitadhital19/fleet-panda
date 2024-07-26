function validateForm() {
    var name= document.getElementsByName('name')[0].value;
    var email= document.getElementsByName('email')[0].value;
    var password = document.getElementsByName('password')[0].value;
    var cpassword = document.getElementsByName('cpassword')[0].value;
    // var letter = document.getElementById('letter');
    // var capital = document.getElementById('capital');
    // var number = document.getElementById('number');
    // var length = document.getElementById('length');
    var atposition=email.indexOf("@");
    var dotposition=email.lastIndexOf(".");
    // myInput.onFocus = function(){
    //     document.getElementById("message").style.display ="block";
    // }
    // myInput.onblur = function(){
    //     document.getElementById("message").style.display = "none";
    // }
    // myInput.onKeyup = function(){
    //     //validate lowercase letters
    //     var lowerCaseLetters =/[a-z]/g;
    //     if(myInput.value.match(lowerCaseLetters)){
    //         letter.classList.remove("invalid");
    //         letter.classList.add("valid");
    //     }
    //     else{
    //         letter.classList.remove("valid");
    //         letter.classList.add("invaid");
    //     }
    //       //validate uppercase letters
    //       var UpperCaseLetters = /[A-Z]/g;
    //       if(myInput.value.match(UpperCaseLetters)){
    //         letter.classList.remove("invalid");
    //         letter.classList.add("valid");
    //     }
    //     else{
    //         letter.classList.remove("valid");
    //         letter.classList.add("invaid");
    //     }
    //     var UpperNumbers = /[0-9]/g;
    //       if(myInput.value.match(numbers)){
    //         letter.classList.remove("invalid");
    //         letter.classList.add("valid");
    //     }
    //     else{
    //         letter.classList.remove("valid");
    //         letter.classList.add("invaid");
    //     }
    //     var UpperCas= /[A-Z]/g;
    //       if(myInput.value.match >= 8){
    //         letter.classList.remove("invalid");
    //         letter.classList.add("valid");
    //     }
    //     else{
    //         letter.classList.remove("valid");
    //         letter.classList.add("invaid");
    //     }
    // }
    if(name == null || name == "") {
        alert("please enter your Full Name");
        return false;
    }
    else if(email==null || email == ""){
        alert("please enter your email address");
        return false;
    }
    else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){
        alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);
        return false;
    }
    // else if(password.length<=8){
    //     alert("password should be atleast of 8 characters!");
    //     return false;
    // }
    // else if(cpassword !== password){
    //     alert('Password doesnt match.')
    //     return false;
    // }
    else{
        // alert('ok')
        location.replace("portfolio.html");
        localStorage.setItem("email",email);
        localStorage.setItem("password",password);
    }
    let obj = {
        email:email
    };
    alert(JSON.stringify(obj));
    // document.getElementById("f1").reset();
    return false;
}
