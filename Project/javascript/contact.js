function validateForm(){
    const storedEmail = document.getElementById('email').value;
    const storedName= document.getElementById('name').value;
    const storedMessage = document.getElementById('message').value;

    if(storedName == null || storedName == "") {
        alert("please enter your Full Name");
        return false;
    }
    else if(storedEmail==null || storedEmail == ""){
        alert("please enter your email address");
        return false;
    }
    else if(storedMessage == null || storedMessage == ""){
        alert("Please enter your message");
        return false;
    }
    else{
        alert("Your form is sucessfully Submitted");
        location.replace("/app1/portfolio.html");
    }
    return false;
}
