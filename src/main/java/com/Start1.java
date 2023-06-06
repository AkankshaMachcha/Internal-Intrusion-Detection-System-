package com;


import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Start1
{

	public static void main(String[] args) {
		System.out.println("Inside Start");
		DateFormat dateFormat11 = new SimpleDateFormat("dd/MM/yyyy");
		Date date11 = new Date();
		String dd=dateFormat11.format(date11);
		 
		String[] letters=new String[]{"A","B","C","D","E","F","G","H","I","J","K","L","M"};
		File[] driver=new File[letters.length];
		boolean[] isDrive=new boolean[letters.length];
		
		for(int i=0;i<letters.length;++i)
		{
			driver[i]=new File(letters[i]+":/");
			isDrive[i]=driver[i].canRead();
			
		}
		     
			while(true)
			{
				for(int i=0;i<letters.length;++i)
				{
					boolean pluggedin=driver[i].canRead();
					if(pluggedin!=isDrive[i])
					{
						if(pluggedin)
						{
								SendData s=new SendData();
						        s.send("usb");
						        System.out.println("Find");
							 
						} isDrive[i]=pluggedin;
						try {
							Thread.sleep(100);
						} catch (Exception e) {e.printStackTrace();// TODO: handle exception-----------------------------
						}
					}
				} 
		        	DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			     Date date = new Date();
			     String ss=dateFormat.format(date);
			     if(dd.compareTo(ss)>0 || dd.compareTo(ss)<0)
			     {
			      DateFormat dateFormat12 = new SimpleDateFormat("dd/MM/yyyy");
			      Date date12 = new Date();
			      dd=dateFormat12.format(date12);
			      SendData s=new SendData();
			      s.send("date");
			     } 
			 }
		}
}
