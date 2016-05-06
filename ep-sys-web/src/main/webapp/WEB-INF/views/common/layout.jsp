<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
        <meta charset="utf-8">
        <title>HSDc eProcurement System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="<c:url value="/resources/css/bootstra-3.0.2.min.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/font-awesome-3.2.1.min.css"/>" type="text/css" rel="stylesheet">
        
        <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        
        
        <script type='text/javascript' src="<c:url value="/resources/js/jquery-1.9.1.min.js"/>"></script>
        <script type='text/javascript' src="<c:url value="/resources/js/bootstrap-3.0.2.min.js"/>"></script>
        <script type='text/javascript' src="<c:url value="/resources/js/jquery-fileupload/vendor/jquery.ui.widget.js"/>"></script>
		<script type='text/javascript' src="<c:url value="/resources/js/jquery-fileupload/jquery.iframe-transport.js"/>"></script>
		<script type='text/javascript' src="<c:url value="/resources/js/jquery-fileupload/jquery.fileupload.js"/>"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate-1.11.1.js"></script>
		
        <link rel="shortcut icon" href="/bootstrap/img/favicon.ico">
        <link rel="apple-touch-icon" href="/bootstrap/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/bootstrap/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/bootstrap/img/apple-touch-icon-114x114.png">
		
        
        <style type="text/css">
            /* bootstrap 3 helpers */

.navbar-form input, .form-inline input {
	width:auto;
}

/* end */

/* custom theme + Bootstrap resets */
@import url('http://fonts.googleapis.com/css?family=Open+Sans:300,400');

header {
	min-height:180px;
  	margin-bottom:5px;
}

/* only apply sticky columns on wider screens */
@media (min-width: 1200px) {
  #sidebar {
 	margin-left:15px;
  }

  #content {
 	padding-right:15px;
  }

  #sidebar.affix-top {
      position: static;
  }
  
  #sidebar.affix {
      position: fixed !important;
      top: 20px;
      width:200px;
  }

  #midCol.affix-top {
      position: static;
  }

  #midCol.affix-bottom {
      padding-top:0;
  }
  
  #midCol.affix {
      position:fixed !important;
  	  top: 20px;
  	  width:292px;
  }
}

.affix {
      position:static;
}

body {
  font-family: 'Open Sans',Arial,Helvetica,Sans-Serif;
  font-weight:300;
  color:#676767;
  background-color:#efefef;
}

a,a:hover {
	color:#77CCDD;
  	text-decoration:none;
}

.highlight-bk {
	background-color:#77CCDD;
    padding:1px;
    width:100%;
}

.highlight {
	color:#77CCDD;
}
  
h3.highlight  {
	padding-top:13px;
    padding-bottom:14px;
  	border-bottom:2px solid #77CCDD;
}

.navbar {
	background-color:#77CCDD;
  	color:#ffffff;
  	border-radius:0;
}
.navbar-nav > li > a {
  	color:#fff;
  	padding-left:20px;
  	padding-right:20px;
  	border-left:1px solid #66BBCC;
}
.navbar-nav > li:last-child > a {
  	border-right:1px solid #66BBCC;
}

.navbar-nav li a:hover {
  	background-color:#66BBCC;
}

.navbar-nav > .open > a, .navbar-nav > .open > a:hover, .navbar-nav > .open > a:focus {
	color: #000;
  	opacity:.9;
}

.navbar-brand {
	color:#fff;
}

.accordion-group {
	border-width:0;
}

.dropdown-menu {
	min-width: 250px;
}

.caret {
	color:#fff;
}

.navbar-toggle {
	color:#fff;
    border-width:0;
}
  
.navbar-toggle:hover {
	background-color:#fff;
}

.panel,.panel-heading {
  	border-radius:0;
  	border-width:0;
  	-webkit-box-shadow: 0 3px 3px rgba(0, 0, 0, 0.09);
	box-shadow: 0 3px 3px  rgba(0, 0, 0, 0.09);
}

.thumbnail {
	margin-bottom:8px;
	border-radius:0;
}

.well {
  	border-radius:0;
}

.accordion-heading .accordion-toggle, .accordion-inner, .nav-stacked li > a {
	padding-left:1px;
}

footer {
	height:50px;
  	background-color:#dfdfdf;
  	color:#888;
  	margin-top:20px;
}

@media (min-width: 992px) {
  .no-gutter.row > div[class*='col-md'] {
    padding-left: 0;
    padding-right: 0;
  }
  .no-gutter.row > .col-md-12 {
    width: 99.99999999999999%;
    *width: 99.93055555555554%;
  }
  .no-gutter.row .col-md-11 {
    width: 91.66666666666666%;
    *width: 91.59722222222221%;
  }
  .no-gutter.row > .col-md-10 {
    width: 83.33333333333331%;
    *width: 83.26388888888887%;
  }
  .no-gutter.row > .col-md-9 {
    width: 74.99999999999999%;
    *width: 74.93055555555554%;
  }
  .no-gutter.row > .col-md-8 {
    width: 66.66666666666666%;
    *width: 66.59722222222221%;
  }
  .no-gutter.row > .col-md-7 {
    width: 58.33333333333333%;
    *width: 58.263888888888886%;
  }
  .no-gutter.row > .col-md-6 {
    width: 49.99999999999999%;
  }
  .no-gutter.row > .col-md-4 {
    width: 33.33333333333333%;
  }
  .no-gutter.row > .col-md-3 {
    width: 24.999999999999996%;
    *width: 24.930555555555554%;
  }
  .no-gutter.row > .col-md-2 {
    width: 16.666666666666664%;
    *width: 16.59722222222222%;
  }
  .no-gutter.row > .col-md-1 {
    width: 8.333333333333332%;
    *width: 8.263888888888888%;
  }
}

/* end custom theme */
        </style>
    </head>
   
  <body>
        
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
  	<tiles:insertAttribute name="footer" />


        <!-- JavaScript jQuery code from Bootply.com editor -->
        
        <script type='text/javascript'>
        
        $(document).ready(function() {
        
            $('#sidebar').affix({
				offset: {
				top: 230,
				bottom: 100
		      }
			});	
			$('#midCol').affix({
			      offset: {
			        top: 230,
			        bottom: 100
			      }
			});	
        
        });
        
        </script>
        
    </body>
</html>
 
 