package com;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class datech {
 
	public static void main(String[] args) {


		DateFormat dateFormat11 = new SimpleDateFormat("dd/MM/yyyy");
		Date date11 = new Date();
	//	System.out.println(dateFormat11.format(date11));
		 String dd=dateFormat11.format(date11);
		
		
		// String dd="30/05/2016";
		while(true)
		{
	     DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	     Date date = new Date();
	     String ss=dateFormat.format(date);
	     //System.out.println(ss);
	     
	     if(dd.compareTo(ss)>0 || dd.compareTo(ss)<0)
	     {
	       
	      System.out.println("Date Changed");
	      DateFormat dateFormat12 = new SimpleDateFormat("dd/MM/yyyy");
	      Date date12 = new Date();
	      dd=dateFormat12.format(date12);
	     /* try {
	    	  BufferedImage image = new Robot().createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
	        	ImageIO.write(image, "png", new File("D://screenshot.png"));
		} catch (Exception e) {
			e.printStackTrace();
		}*/
//	      SendData s=new SendData();
	      //s.send();
	      
	      
	      
	     }
	     /*else if(dd.compareTo(ss)<0)
	     {
	      System.out.println("Date1 is before Date2");
	      System.out.println("Date Changed");
	      DateFormat dateFormat12 = new SimpleDateFormat("dd/MM/yyyy");
	      Date date12 = new Date();
	      dd=dateFormat12.format(date12);
	     }
	     else if(dd.compareTo(ss)==0)
	     {
	     // System.out.println("Date1 is equal to Date2");
	     }
	     else
	     {
	      System.out.println("How to get here?");
	     }*/
		
		}

	}

}
