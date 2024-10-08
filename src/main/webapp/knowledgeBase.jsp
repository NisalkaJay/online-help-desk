<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/header.css">
    <link rel="stylesheet" type="text/css" href="CSS/footer.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <style>
    body {
    background-color: #fff;
    
}
      .folder-container {
            display: flex;
            justify-content: center; 
            align-items: center;
            margin-top: 50px; 
            background-color: #f1f1f1;
            padding: 20px;

        }

        .folder {
            margin:10px; 
            margin-right: 30px;
        }

        .folder-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .folder-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .folder-content a:hover {
            background-color: grey;
        }

        .folder:hover .folder-content {
            display: block;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header-bar">
        <ul class="slider-menu">
            <li><a href="homepage.jsp">Home</a></li>
            <li><a href="knowledgeBase.jsp">Knowledgebase</a></li>
            <li>Files</li>
            <li>FAQs</li>
            <li>Services</li>
            <li><a href="InsertTicket.jsp">Raise a ticket</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </div>
</div>



<div class="folder-container">
    <div class="folder">
        General
        <div class="folder-content">
            <a href="AboutUs.jsp">About Us</a>
            <a href="clubsAndSocieties.jsp">Clubs and Societies</a>
            
            
        </div>
    </div>

    <div class="folder">
        Care
        <div class="folder-content">
            <a href="franchisedProgramsDocumentsEtc.jsp">Franchised Programs Documents Verification</a>
            <a href="financialAideScholaships.jsp">Financial Aid / Scholarships</a>
            <a href="attacks.jsp">What is a "phishing" email or an attack?</a>
        </div>
    </div>
    
    <div class="folder">
        Tickets and materials
        <div class="folder-content">
            <a href="AboutUs.jsp">Create a Support Ticket</a>
            <a href="clubsAndSocieties.jsp">How to Access Course Materials</a>
            <a href="financialAideScholaships.jsp">Submitting Assignments via the LMS</a>
        </div>
    </div>
    
    <div class="folder">
        Study Help
        <div class="folder-content">
            <a href="AboutUs.jsp">Creating a Study Schedule</a>
            <a href="clubsAndSocieties.jsp">Active Reading Strategies</a>
            <a href="financialAideScholaships.jsp">Mind Mapping for Better Understanding</a>
            <a href="franchisedProgramsDocumentsEtc.jsp">Effective Note-Taking Strategies</a>
            <a href="attacks.jsp">Group Study Techniques</a>
        </div>
    </div>
    
    <div class="folder">
        Study Materials and Resources
        <div class="folder-content">
            <a href="AboutUs.jsp">Utilizing Online Libraries and Repositories for Research</a>
            <a href="clubsAndSocieties.jsp"> Maximizing the Use of Academic Databases and Search Engines</a>
        </div>
    </div>
</div>

<footer class="footer-section">
    <div class="container">
        <!-- Contact Information Section -->
        <div class="footer-cta pt-5 pb-5">
            <div class="row">
                <!-- Location -->
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="cta-text">
                            <h4>Find us</h4>
                            <span>University of Manchester, Oxford Road, Manchester, M13 9PL</span>
                        </div>
                    </div>
                </div>
                <!-- Phone Number -->
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-phone"></i>
                        <div class="cta-text">
                            <h4>Call us</h4>
                            <span>+44 (0)161 306 6000</span>
                        </div>
                    </div>
                </div>
                <!-- Email Address -->
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="far fa-envelope-open"></i>
                        <div class="cta-text">
                            <h4>Mail us</h4>
                            <span>helpdesk@manchester</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="footer-social-icon">
                    <a href="page1.jsp">Page 1</a>
                    <a href="page2.jsp">Page 2</a>
                    <a href="page3.jsp">Page 3</a>
                </div>
</div>
        
</footer>


</body>
</html>
