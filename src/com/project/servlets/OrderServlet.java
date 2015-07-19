package com.project.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.BillGeneration;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Integer amount=0;
		String OrderItems[]=request.getParameterValues("order");
		BillGeneration bill=new BillGeneration();
		for(int i=0;i<OrderItems.length;i++)
		{
			if(OrderItems[i].equalsIgnoreCase("masalatea"))
			{
				Integer Rate=50;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity"));
				 amount=bill.generate(OrderItems,Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("devilsown"))
			{
				Integer Rate=130;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity1"));
				amount=bill.generate(OrderItems,Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("Cappuccino"))
			{
				Integer Rate=70;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity2"));
				amount=bill.generate(OrderItems,Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("paneersandwich"))
			{
				Integer Rate=120;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity3"));
				amount=bill.generate(OrderItems,Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else
			{
				Integer Rate=145;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity4"));
				amount=bill.generate(OrderItems,Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);	
			}
			
			
		}
		//System.out.print(amount);
		//request.getSession().setAttribute("Amount", amount);
		response.sendRedirect("bill.jsp");
		
	}

}
