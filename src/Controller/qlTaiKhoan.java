package Controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.TaiKhoanDAO;
import Model.TaiKhoan;


@WebServlet("/qlTaiKhoan")
public class qlTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	TaiKhoanDAO TaiKhoanDAO = new TaiKhoanDAO();

    public qlTaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
	    
		String command = request.getParameter("command");
		String ID= request.getParameter("ID");
		
		
		String url ="";
		try {
			
				switch (command) {
				case "delete":
					TaiKhoanDAO.delete_TaiKhoan(Integer.parseInt(ID));
					url = "/TaiKhoanQL";
					break;
				}
			
		} catch (Exception e) {
			
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		String ID = request.getParameter("ID");
		String UserEmail = request.getParameter("UserEmail");
		String Pass = request.getParameter("Pass");
		String HoTen = request.getParameter("HoTen");
		String GioiTinh = request.getParameter("GioiTinh");
		String SDT = request.getParameter("SDT");
		String PhanLoai = request.getParameter("PhanLoai");
		String url = "";
		if(request.getParameter("ID")==""||request.getParameter("UserEmail")==""||request.getParameter("UserEmail")==""||request.getParameter("PhanLoai")=="") {
			HttpSession session =request.getSession();
			session.setAttribute("error","CÃ¡c thÃ´ng tin khÃ´ng Ä‘Æ°á»£c phÃ©p Ä‘á»ƒ trá»‘ng");
			url="/admin/themTaiKhoan.jsp";
		}
		else {
		try  {
				switch (command) {
				case "insert":
				TaiKhoanDAO.insert_TaiKhoan(new TaiKhoan(Integer.parseInt(ID),UserEmail,Pass,HoTen,GioiTinh,SDT,Integer.parseInt(PhanLoai)));
				url = "/TaiKhoanQL";
				break;
				case "update":
					TaiKhoanDAO.update_TaiKhoan(new TaiKhoan(Integer.parseInt(ID),UserEmail,Pass,HoTen,GioiTinh,SDT,Integer.parseInt(PhanLoai)));
					url = "/TaiKhoanQL";
					break;
				}
			}
		 catch (Exception e) {
			 HttpSession session =request.getSession();
				session.setAttribute("error","ID không hợp lệ, vui lòng kiểm tra lại!");
			 url="/admin/themTaiKhoan.jsp";
		}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
