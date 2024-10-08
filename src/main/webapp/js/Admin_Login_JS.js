function ValidateAdminLogin() {
	
	const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;
    
    if (username === "Dasun" && password === "dasun123") {
		
        document.getElementById("loginMessage").textContent = "Login successful. Redirecting...";
        setTimeout(() => {
            window.location.href = "Admin_Dashboard.jsp";
        	}, 2000); 
        	
    } 
    
    else {
		
        document.getElementById("loginMessage").textContent = "Invalid username or password";
        
    }
}