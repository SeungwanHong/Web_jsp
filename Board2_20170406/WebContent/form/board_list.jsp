<%@page import="hsw.comm.Url"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>list page</title>
</head>
<body>
<h1>���帮��Ʈ</h1>
<h1><a href="<%= Url.URL_FULL_LOGINOUT%>">LOGOUT</a></h1>
<a href="<%= Url.URL_FULL_BOARDCONTENT %>?indx=1">����Ʈ1</a><br/>
<a href="<%= Url.URL_FULL_BOARDCONTENT %>?indx=2">����Ʈ2</a><br/>
<a href="<%= Url.URL_FULL_BOARDCONTENT %>?indx=3">����Ʈ3</a><br/>
</body>
</html>