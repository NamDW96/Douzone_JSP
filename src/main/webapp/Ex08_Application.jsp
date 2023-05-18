<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	webproject 생성 >> Template 구조 >> WEB-INF >> web.xml 제공 (웹어플리케이션 전체 환경설정)

web.xml (서버가 시작되면 제일먼저 loading 되고 해석되고 실행)
<welcom -file> index.htm</welcom-file> 웹 사이트 기본 페이지 설정
ex) http://192.168.0.115:8090/WebJSP/ 로 검색하면 > 페이지서비스 > default 페이지 구성....

/WebJSP >> 웹 프로젝트 이름, 가상 디렉토리 , context root (문맥, 흐름, 전체)
//웹 경로 (가상경로) : http://192.168.0.115:8090/WebJSP
>>실경로 : C:\Douzone\Web\WebBack\WebLabs\WebJSP\src\main\webapp 안에 자원을 서비스 하겠다 (jsp우클릭 properties)

서비스 자원 : html, htm, css, js, json, txt, jsp

>>생성하는 모든 자원은 scope
>> a.jsp > <% String s = "A"  >> s 변수는 a.jsp 안에서만 유효 
>> b.jsp > <% String s = "A"  >> s 변수는 b.jsp 안에서만 유효 
>> c.jsp > <% String s = "A"  >> s 변수는 c.jsp 안에서만 유효

a.jsp , b.jsp , c.jsp 페이지에서 공유하는 자원은 ?
답이 web.xml 환경설정 > 서버 시작 > 가정먼저 해석(loading)


<context-param>
	<description>개발자 마음...</description>
	<param-name>email</param-name>
	<param-value>kosa@or.kr</param-value>
</context-param>
<-- web.xml 파일에 작성된 내용>

web.xml 자원에 접근 방법
Application 객체(WAS 제공)
Application >> web.xml 접근 >> 자원 read 가능

web.xml이 변경되면 Tomcat 재시작 필요

WebApp 생성 >> WEB-INF 제공받아요 >> lib(jar파일)
							  >> web.xml (환경설정파일)

WEB-INF 보안폴더 : Client 접근하게 되면 없는 페이지를 리턴 (접근 불가)

http://192.168.0.42:8090/WebJSP/WEB-INF/web.xml 엔터 서버는 404 전달(없는페이지)

WEB-INF >> views >> member >>register.jsp 등등
				 >> admin  >>admin.jsp   

>>클라이언트가 직접 보아서는 안돼는 페이지는 보안 폴더안에 숨김
>>클라이언트의 직접 접속을 막고 서버의 요청이 있을때만 제공
include , forward 와 같은 방식을 사용해서 보여준다.



*/
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Application 객체(WAS 제공)</h3>
	<%
		String param = application.getInitParameter("email");
		out.print("<h3>"+ param + "</h3>");
		
		out.print("<hr>");
		
		String param2 = application.getInitParameter("filepath");
		out.print("<h3>"+ param2 + "</h3>");
	%>
</body>
</html>