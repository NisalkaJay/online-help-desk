<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="CSS/Delete_Message_Popup_Style.css">

<title>Deletion Confirmation</title>

</head>

<body>

	<div class="popup" id="deletePopup">
        <div class="popup-content">
            <span class="close" onclick="closePopup()">&times;</span>
            <p>The FAQ has been Deleted Successfully</p>
            <button class="redirect-button" onclick="redirectToAnotherPage()">Go Back</button>
        </div>
    </div>
    
    <script src="js/Delete_Message_Popup_JS.js"></script>

</body>

</html>