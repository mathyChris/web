<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
	
		@keyframes xxx { 
		
			from {
			
				opacity : 0.0 ;
		
			}
			
/* 			50% { */ 
			
/* 				transform : rotateX(360deg); */
/* 				transform : rotate(120deg,360deg); */
				
/* 			} */
			
			
			to {
			
				background-color : red ; 
				opacity : 1.0 ;
/* 				transform : rotateY(360deg) ; */
/* 				transform : rotateX(360deg);  */
				transform : rotateZ(360deg); 
			
			}
		}
	
		h1{
		
			animation : xxx 2s ; 
		
		}
	
	</style>

</head>
<body>

	<h1 id="tomcat"> Virtual Tomcat Test</h1>
	
	<script type="text/javascript">
	
	
	tomcat.onclick = function(){
		
		alert("Tomcat Click..."); 
		
	};
	
	</script>
	
	<ol>
		<li><a href="map/map2.jsp"> map2.jsp </a> </li>
		<li></li>
		<li></li>
		<li></li>
	</ol>

		
		<jsp:include page="map/map2.jsp"></jsp:include><br><br>


</body>
</html>





