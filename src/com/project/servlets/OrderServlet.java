package com.project.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.bean.BillGeneration;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Integer amount=0;
		String OrderItems[]=request.getParameterValues("order");
		
		String Quantity0=request.getParameter("quantity");
		String Quantity1=request.getParameter("quantity1");
		String Quantity2=request.getParameter("quantity2");
		String Quantity3=request.getParameter("quantity3");
		String Quantity4=request.getParameter("quantity4");
		
		String QuantityItems[]={Quantity0,Quantity1,Quantity2,Quantity3,Quantity4};
		for(int i=0;i<OrderItems.length;i++)
		{
			System.out.println(QuantityItems[i]+"<br>");	
		}
		HttpSession session = request.getSession();
		session.setAttribute( "myArray", OrderItems );
		session.setAttribute("myArray1",QuantityItems);
		BillGeneration bill=new BillGeneration();
		
		for(int i=0;i<OrderItems.length;i++)
		{
			if(OrderItems[i].equalsIgnoreCase("Masala Tea"))
			{
				Integer Rate=50;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity"));
				 amount=bill.generate(Quantity,Rate);
			
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("Devils Own"))
			{
				Integer Rate=130;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity1"));
				amount=bill.generate(Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("Cappuccino"))
			{
				Integer Rate=70;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity2"));
				amount=bill.generate(Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else if(OrderItems[i].equalsIgnoreCase("Paneer Sandwich"))
			{
				Integer Rate=120;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity3"));
				amount=bill.generate(Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);
				
			}
			else
			{
				Integer Rate=145;
				Integer Quantity=(Integer) Integer.parseInt(request.getParameter("quantity4"));
				amount=bill.generate(Quantity,Rate);
				request.getSession().setAttribute("Amount", amount);	
			}
			
			
		}
		response.sendRedirect("bill.jsp");
		
	}

}
