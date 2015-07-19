package com.project.bean;

public class BillGeneration {
	int result=0;

	public int generate(String OrderItems[],Integer Quantity,Integer Rate)
	{
			result=result+Quantity*Rate;
		return result;	
	}
}
