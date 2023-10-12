package com.pablo.controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LenguajeSelectorController
 */
public class LenguajeSelectorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LenguajeSelectorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String idioma = "es";

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("idioma")) {
                    idioma = cookie.getValue();
                    break;
                }
            }
        }

        idioma = request.getParameter("idioma");

        Cookie cookieIdioma = new Cookie("idioma", String.valueOf(idioma));
        cookieIdioma.setMaxAge(60 * 60 * 24 * 7); 

        response.addCookie(cookieIdioma);

        response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

}
	