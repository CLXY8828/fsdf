<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="Cache-Control" content="no-cache" />  
		<title>浏览器缓存</title>
	</head>
	<body>
	
	 也可以在js的script标签中配合使用<br/>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+3)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+4)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+5)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+6)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+7)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+8)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+9)+'">');</script>
<script type="text/javascript"> document.write(' <img  src="<%=request.getContextPath()%>/static/images/1.jpg?t='+(new Date().getTime()+10)+'">');</script>
	  
	        
	</body>
</html>
