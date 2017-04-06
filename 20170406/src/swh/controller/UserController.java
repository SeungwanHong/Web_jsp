package swh.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import swh.service.UserService;
import swh.user.vo.LoginVO;

//��û�� url�� user�� ������ ���⼭ ó��
@WebServlet("/user/*")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();




	private static final String LOGIN = "/login";
	private static final String JOIN = "/join";
	private static final String LOGOUT = "/logout";

    public UserController() {
        super();
    }
    //UserController �������� ���ʿ� ����� �� �� �� �ѹ��� ȣ�� �ȴ�.
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//���� �������� �Էµ� url �������� request.getPathInfo();

		// ex) /user/login -> /login
		//	   /user/join  -> /join
		String req_uri = request.getPathInfo();
		try {
			switch(req_uri){
			//Ŭ���̾�Ʈ�� login ��û�� ������
			case LOGIN:
				//Ŭ���̾�Ʈ�� form�� �Է��ؼ� ������ id�� pw�� �޾� ����.
				String userId = request.getParameter("userid");
				String userPw = request.getParameter("userpw");
				LoginVO loginVo = userService.login(userId, userPw);
				if(loginVo != null){
					//�α����� �� ���� - �����̷�Ʈ�� ó��     ������ �������� ���� �ʰ� ��Ʈ�ѷ��� �ּҰ� ����.
					//LoginVO�� ���� �Ѵ� : �α����� ���� �ߴ�.
					// �α����� ������ ������� ���ǿ� �����ؼ� �� Ŭ���̾�Ʈ�� ������Ʈ�� �̿��ϴ� ����
					// �α����� �Ǿ��� ���·� �������� �۾��� �� �� �ְ� �� ����
					
					//Session : HttpSession �������̽��� ������� �Ѵ�.
					HttpSession session = request.getSession();
					// session�� ��ü(��) �����ϱ�
					session.setAttribute("LOGIN", loginVo);
					response.sendRedirect("../example/login_form.jsp");
					
				}else{
					//�α��� �ȵ� ���� - ���������� ó��
					//�α��� ��û�� �ߴµ� �α��� �ȵ̴ٴ� ó����
					//������Ʈ�� ���������ִ� ����
					RequestDispatcher dispatcher = request.getRequestDispatcher("../example/login_failed.jsp");
					dispatcher.forward(request, response);
				}
				break;
			case JOIN:
				break;
			case LOGOUT:
				//���� �ʱ�ȭ
				request.getSession().invalidate();
				response.sendRedirect("../example/login_form.jsp");
				break;
			}
		}catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}