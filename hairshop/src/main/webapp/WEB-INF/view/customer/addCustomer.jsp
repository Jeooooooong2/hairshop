<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>오늘 염색할까?!</title>
    

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.min.css" rel="stylesheet">

	<!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
</head>
<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
	<!-- Left Sidebar Start -->
    <div class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion">
    	 <c:import url="/WEB-INF/view/SideBar.jsp"></c:import>   
    </div>
    <!-- Left Sidebar End -->
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
            <c:import url="/WEB-INF/view/TopBar.jsp"></c:import>
            <!-- End of Topbar -->
            <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">고객 추가</h1>
                    </div>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3" style="display: flex; justify-content: space-between;">
                            <h6 class="m-0 font-weight-bold text-primary" style="font-size: 40px; line-height: 1.5;">고객 리스트</h6>
                            <div>
                            	<a href="${pageContext.request.contextPath}/customer/addCustomer" class="btn btn-primary btn-circle btn-lg">
                                        <i class="fas fa-plus"></i>
                                    </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="${pageContext.request.contextPath}/customer/addCustomer" method="post">
							    이름: <input type="text" name="customerName" required /><br>
							    전화번호: <input type="text" name="phoneNumber" required /><br>
							    성별: 
							    <select name="gender">
							        <option value="F">남자</option>
							        <option value="M">여자</option>
							    </select><br>
							    색상 기록: <input type="text" name="colorLog" /><br>
							    메모: <textarea name="memo"></textarea><br>
							    <button type="submit">등록</button>
							</form>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
          </div>
		</div>


<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath}/js/demo/datatables-demo.js"></script>

</body>
    
</html>