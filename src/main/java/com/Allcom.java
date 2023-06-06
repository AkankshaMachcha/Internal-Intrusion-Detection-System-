package com;

import java.io.File;

public class Allcom {

	public static void main(String[] args) {
		 
		String[] letters=new String[]{"A","B","C","D","E","F","G","H","I","J","K","L","M"};
		File[] driver=new File[letters.length];
		boolean[] isDrive=new boolean[letters.length];
		
		for(int i=0;i<letters.length;++i)
		{
			driver[i]=new File(letters[i]+":/");
			isDrive[i]=driver[i].canRead();
			
		}
		
			System.out.println("Find Drive: Wating for Device...");
			while(true)
			{
				for(int i=0;i<letters.length;++i)
				{
					boolean pluggedin=driver[i].canRead();
					if(pluggedin!=isDrive[i])
					{
						if(pluggedin)
						{
								//SendData s=new SendData();
						       // s.send();
							System.out.println("F");
						}
							/*System.out.println("Drive "+letters[i]+" has been plugged in");
						else
							System.out.println("Drive "+letters[i]+" has been unplugged");
						*/
						isDrive[i]=pluggedin;
						try {
							Thread.sleep(100);
						} catch (Exception e) {e.printStackTrace();// TODO: handle exception
						}
					}
				}
			}
		}
		


}
