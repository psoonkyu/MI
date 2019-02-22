package com.mi.group.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mi.group.model.service.GroupService;

/**
 * Servlet implementation class GroupAddEndServlet
 */
@WebServlet("/addGroupEnd.do")
public class GroupAddEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GroupAddEndServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String gName = request.getParameter("gName");
		String[] members = request.getParameterValues("members[]");
		System.out.println(gName);
		for (String m : members)
		{
			System.out.println(m);
			
		}
		
		int result=new GroupService().addGroup(gName,members);

		/*
		 * if(members.length>0) { for(int i=0; members.length>i;i++) {
		 * System.out.println(members[i]); } }
		 */

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
