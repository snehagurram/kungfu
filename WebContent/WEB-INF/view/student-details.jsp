<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:0 ;margin-right:0">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>

<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body style="background-color:#000;display:table;width:100%">
<img src="https://png.pngtree.com/thumb_back/fh260/back_pic/03/57/22/6157a051c9146a3.jpg" style="margin-bottom:50px;width: 100%;height: 260px;">
<div class="table-bkg">
	<div id="wrappper" style="position:relative">
		<div id="header" style="width:35%;background:transparent !important;padding:15px !important;position: absolute;top: -233px;left: 460px;">
			<h2 style="color:rgb(253,233,30);font-size:50px">KungFu Academy</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
				<label class="col-md-10 col-md-offset-1"><b><h2 style="color:#fff">Student Details</h2></b></label><br />
				<br />
				<table class="col-md-10 col-md-offset-1">
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student Id:</span> ${theStudent.id}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student Name:</span> ${theStudent.firstName}
							${theStudent.lastName}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student dob:</span> ${theStudent.dob}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student joinDate:</span> ${theStudent.joinDate}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student mobile:</span> ${theStudent.mobile}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student email:</span> ${theStudent.email}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Student Address:</span> ${theStudent.doorNo},
							${theStudent.street}, ${theStudent.city}, ${theStudent.province},
							${theStudent.postalCode}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Primary Contact Name:</span> ${theStudent.primaryContact}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Primary Contact Number:</span>
							${theStudent.primaryContactMobile}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Primary Contact Email:</span>
							${theStudent.primaryContactEmail}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Secondary Contact Name:</span>
							${theStudent.secondaryContact}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Secondary Contact Number:</span>
							${theStudent.secondaryContactMobile}</td>
					</tr>
					<tr>
						<td align="left"><span style="width:250px;display:table;float:left">Secondary Contact Email:</span>
							${theStudent.secondaryContactEmail}</td>
					</tr>
				</table>

				<c:url var="getStudentFinances" value="/student/getStudentFinances">
					<c:param name="studentId" value="${theStudent.id}"></c:param>
				</c:url>

				<c:url var="getStudentAttendance"
					value="/student/getStudentAttendance">
					<c:param name="studentId" value="${theStudent.id}"></c:param>
				</c:url>
				<div class="col-md-10 col-md-offset-1">
				<label class="pull-left"> <a
					href="${pageContext.request.contextPath}/student/list"
					style="margin-top: 45px; float: left;margin-right:40px">Back to list</a>
				</label> 
				<label class="pull-left" style="margin-top: 45px;margin-right:40px; width: auto;"> <a href="${getStudentFinances}">Finance Details</a> </label>
				 
				<label class="pull-left" style="margin-top: 45px;margin-right:40px; width: auto;"> <a href="${getStudentAttendance}">Attendance
						Details</a>
				</label>
				</div>

		</div>
	</div>
</div>
</body>
</html>