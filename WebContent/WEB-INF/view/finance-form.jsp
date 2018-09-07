<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html style="margin-left:0 ;margin-right:0">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finance Form</title>

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
		
		<div>
			<h2 class="col-md-10 col-md-offset-1" style="color:#fff">Welcome ${student.firstName} ${student.lastName}</h2>
		</div>	

		
		<table class="col-md-10 col-md-offset-1">
				<tr>
					<th style="background: none repeat scroll 0 0 #333;text-align:center">Category</th>
					<th style="background: none repeat scroll 0 0 #333;text-align:center">Sub Category</th>
					<th style="background: none repeat scroll 0 0 #333;text-align:center">Fees</th>
					<th style="background: none repeat scroll 0 0 #333;text-align:center">Description</th>
					<th style="background: none repeat scroll 0 0 #333;text-align:center">Action</th>
				</tr>
			
				<c:forEach var="tmpService" items="${services}" >	
				
				<c:url var="addFinance" value="/student/addFinance">
					<c:param name="studentId" value="${student.id}"></c:param>
					<c:param name="serviceId" value="${tmpService.id}"></c:param>
				</c:url>		
				
				<tr> 
					<td>${tmpService.category}</td>
					<td>${tmpService.subCategory}</td>
					<td>${tmpService.fees}</td>
					<td>${tmpService.description}</td>
					<td>
						<a href="${addFinance}">Add</a> 
					</td>
				</tr>
				</c:forEach>					
			</table>
			<label class="col-md-10 col-md-offset-1">
				<a href="${pageContext.request.contextPath}/student/list" style="margin-top: 45px;width: 120px;float: left;">Back to list</a>
			</label>
		</div>
</div>
</div>
</body>
</html>