<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="true" %>
<%
/*
JAVA : IO >> Buffer >> default (8kb) >> buffer (비워지는 시점) : 1. 8kb 채워지면, 2.flush( close() )

설정을 강제하지 않으면
<%@ page buffer="8kb" autoFlush="true" 이게 기본값이고 그렇기 때문에 buffer를 자동 flush한다

*/
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=0; i<10; i++){
			out.print("<b>" + i + "<b><br>");
		}
	%>
</body>
</html>