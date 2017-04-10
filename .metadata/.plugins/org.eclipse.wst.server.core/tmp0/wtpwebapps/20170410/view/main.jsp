<%@page import="hsw.comm.Url"%>
<%@page import="hsw.board.vo.BoardListVO"%>
<%@page import="java.util.List"%>
<%@page import="hsw.user.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% LoginVO loginVo = (LoginVO)session.getAttribute("LOGIN"); %>
	<% if(loginVo == null){ %>
	<div class="container">
		<div class="row">
			<div class="page-header">
				<h2>�α��� �ϼ���</h2>
			</div>
			<div class="col-md-3">
				<div class="login-box well">
					<form role="form" method="post" action="<%= Url.URI_LOGINCHECK%>">
						<legend>�α���</legend>
						<div class="form-group">
							<label for="userid">�̸��� or ���̵�</label> <input name="userid"
								value='' id="userid" placeholder="E-mail or Username"
								type="text" class="form-control" />
						</div>
						<div class="form-group">
							<label for="password">��й�ȣ</label> <input name="userpw"
								id="password" value='' placeholder="Password" type="password"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="Login" />
						</div>
					</form>
				</div>
			</div>
			
		</div>
	</div>
	<%}else{ %>
	<h1>�Խù����!</h1>
	h2><a href="../User/logout">�α׾ƿ�</a></h2>
	<%
		List<BoardListVO> bl = (List)request.getAttribute("boardList");
	%>

	<table border="1" class="table">
		<!-- �÷��� �̸� (�����ͺ��̽��� �÷����� �ƴ� ����)-->
		<thead>
			<th>�۹�ȣ</th>
			<th>����</th>
			<th>���̵�</th>
			<th>�ۼ���</th>
			<th>������</th>
			<th>��ȸ��</th>	
		</thead>
		<tbody>
		<%for(int i=0; i<bl.size(); i++){ %>
		<!-- <tr></tr> => row1  Table Row -->
			<tr align="center">
			<!-- <td></td> => DATA Table DATA -->
				<td><%=bl.get(i).getBidx() %></td>
				<%--<td><a href="#?bidx=<%=boardVO.getBidx()%>" >���غ�</a></td> --%>
				<td><a href="../Board/BoardContents?bidx=<%=bl.get(i).getBidx()%>"> <%=bl.get(i).getTitle() %></a></td>
				<td><%=bl.get(i).getUserid() %></td>
				<td><%=bl.get(i).getWritedate() %></td>
				<td><%=bl.get(i).getModdate() %></td>
				<td><%=bl.get(i).getHitcnt() %>
			</tr>
		<%} %>
		
		</tbody>
	
	
	</table>
	<%} %>
</body>
</html>