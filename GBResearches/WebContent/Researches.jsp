<%@page import="com.Research"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GB Researches Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="Views/researches.css">
<script src="Components/jquery-3.2.1.js"></script>
<script src="Components/researches.js"></script>

</head>
<body>

 <div class="container">
 <div class="row">
 <div class="col-6">

<h1>Researches Management</h1>
<form id="formResearches" name="formResearches" method="post" enctype="multipart/form-data">
	 Research Title:
	<input id="title" name="title" type="text" class="form-control form-control-sm">
	<br> Author:
	<input id="author" name="author" type="text" class="form-control form-control-sm">
	<br> Category:
	<select id="category" name="category" class="form-control form-control-sm">
						 <option value="0">--Select category--</option>
						 <option value="Computer Science">Computer Science</option>
						 <option value="Physics">Physics</option>
						 <option value="Finance">Finance</option>
						 <option value="Commerce">Commerce</option>
						 <option value="Medical">Medical</option>
						 <option value="Biology">Biology</option>
						 <option value="Engineering">Engineering</option>
	</select>
	<br> Year:
	<input id="year" name="year" type="text" class="form-control form-control-sm">
	<br> 
	<div class="form-group files color">
    Upload Your File:
    <input id="uplaodFile" name="uploadFile" type="file" class="form-control">
    </div>
	<br>
	<br>
	<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
	<input type="hidden" id="hidResearchIDSave" name="hidResearchIDSave" value="">
</form>
<br>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>

<br>
<div id="divResearchesGrid">
	 <%
	 	Research research = new Research();
	 	out.print(research.readResearchesUser());
	 %>
</div>

</div>
</div>
</div>
</body>
</html>

