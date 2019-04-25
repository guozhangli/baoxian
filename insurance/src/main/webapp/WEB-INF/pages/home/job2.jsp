<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@include file="head.jsp" %>
  <main id="main">
        <header class="page-header">
            <div class="container">
                <h1>Contact</h1>
                <nav class="breadcrumps"> <a href="https://templatemag.com/">Home</a> » Contact</nav>
            </div>
        </header>
        <section class="page-wrap">
            <div class="container">
                <article id="page-2" class="single-page post-2 page type-page status-publish hentry">
                    <p>Use the contact form below to send us a message.</p>
                </article>
                <form class="contact-form php-mail-form" role="form" action="https://templatemag.com/wp-content/themes/tmag/includes/contactform.php"
                    method="POST">
                    <div class="row">
                        <div class="form-group col-md-6"> <input name="name" class="form-control" id="contact-name" placeholder="Your Name" data-rule="minlen:4"
                                data-msg="Please enter at least 4 chars" type="name">
                            <div class="validate"></div>
                        </div>
                        <div class="form-group col-md-6"> <input name="email" class="form-control" id="contact-email" placeholder="Your Email" data-rule="email"
                                data-msg="Please enter a valid email" type="email">
                            <div class="validate"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12"> <input name="subject" class="form-control" id="contact-subject" placeholder="Subject" data-rule="minlen:4"
                                data-msg="Please enter at least 8 chars of subject" type="text">
                            <div class="validate"></div>
                        </div>
                        <div class="form-group col-md-12"><textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5"
                                data-rule="required" data-msg="Please write something for us"></textarea>
                            <div class="validate"></div>
                        </div>
                        <div class="col-md-12"> <label class="form-group custom-checkbox alignleft">I've read and accept the <a href="https://templatemag.com/privacy/">privacy policy</a>. <input data-rule="checked" class="form-control" data-msg="Please accept the privacy policy" name="privacy-policy" type="checkbox"><div class="validate"></div> <span class="checkmark"></span> </label></div>
                        <div
                            class="col-md-12">
                            <div class="loading"></div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="form-send col-md-12"> <button type="submit" class="btn btn-large">Send Message</button></div>
            </div>
            </form>
            </div>
        </section>
    </main>
        <%@include file="footer.jsp" %>
</body>
</html>