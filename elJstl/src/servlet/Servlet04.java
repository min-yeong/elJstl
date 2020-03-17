package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/04")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male");
		// Request Scope
		request.setAttribute("userVo", userVo);	
		request.setAttribute("num", 1);
		request.setAttribute("str", "안녕하세요");
		
		// 06번 예제, Scope Test
		UserVo userVoSession = new UserVo(2, "홍길동", "hong", "1234", "male");
		// Session Scope의 객체 추가
		request.getSession(true).setAttribute("userVoSess", userVoSession);
		// Application Scope에 객체 추가 : Application 영역 = Context
		UserVo userVoApp = new UserVo(3, "장길산", "jang", "4321", "male");
		request.getServletContext().setAttribute("userVoApp", userVoApp);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/04.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
