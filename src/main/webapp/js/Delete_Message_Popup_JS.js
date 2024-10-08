function openPopup() {
    document.getElementById("deletePopup").style.display = "block";
}

function closePopup() {
    document.getElementById("deletePopup").style.display = "none";
}

function redirectToAnotherPage() {
    closePopup(); // Close the popup before redirecting
    window.location.href = "Create_FAQ.jsp"; // Change the URL to the desired destination
}