<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="test01_to.jsp" method="post" name="testform">
	<table>
		<tr>
			<td>������ǰ</td>
			<td>�����</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="chk" value="������ ��Ʈ" checked="checked">������ ��Ʈ<br/>
				<input type="checkbox" name="chk" value="������ s3" >������ s3<br/>
				<input type="checkbox" name="chk" value="������ 4s" >������ 4s<br/>
				<input type="checkbox" name="chk" value="��Ƽ�ӽ� LTE2" >��Ƽ�ӽ� LTE2<br/>
				<input type="checkbox" name="chk" value="��Ƽ�ӽ���" >��Ƽ�ӽ���<br/>
			</td>
			<td>
				<input type="radio" name="rate" value="LTE62" checked="checked">LTE62<br/>
				<input type="radio" name="rate" value="LTE72" >LTE72
			</td>
		</tr>
		<tr>
			<td colspan="1" align="center">
				<input type="submit" value="����">
				<input type="reset" value="�ʱ�ȭ">
			</td>
		</tr>
	</table>
</form>
</body>
</html>