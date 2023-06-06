package com;

import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.net.Inet4Address;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.imageio.ImageIO;

import com.github.sarxos.webcam.Webcam;
import com.util.Constants;
import com.util.DbConnection;

public class SendData {

	public void send(String msg) {

		try {

			String username = "", usb = null, web = null, directory = null, date = null;
			int userId = 0;

			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from tempp");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				usb = rs.getString("usb");
				web = rs.getString("web");
				directory = rs.getString("directory");
				date = rs.getString("date");
				username = rs.getString("username");
				userId = rs.getInt("user_id");
			}

			if (msg.equals("usb")) {
				if (usb.equals("no")) {
					capture(userId, username);
				}
			} else if (msg.equals("date")) {
				if (date.equals("no")) {
					capture(userId, username);
				}
			} else if (msg.equals("web")) {
				if (web.equals("no")) {
					capture(userId, username);
				}
			} else if (msg.equals("directory")) {
				if (directory.equals("no")) {
					System.out.println("Captured");
					capture(userId, username);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void capture(int userId, String username) {
		long currentTime = System.currentTimeMillis();
		String image1= currentTime+".png";
		try {

			BufferedImage image = new Robot()
					.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
			ImageIO.write(image, "png", new File(Constants.PROJECT_PATH + image1));

			Thread.sleep(5000);

			long currentTime1 = System.currentTimeMillis();
			String image2= currentTime1+".png";

			Webcam webcam = Webcam.getDefault();
			webcam.open();
			ImageIO.write(webcam.getImage(), "PNG", new File(Constants.PROJECT_PATH + image2));

			webcam.close();

			Thread.sleep(5000);
			
			Inet4Address inet = (Inet4Address) Inet4Address.getLocalHost();
            String ipAddress = inet.getHostAddress();
            

//            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
            Date date = new Date();  
            
            String sql = "INSERT INTO `user_activities`"
            		+ "(`user_id`, `username`, `activity`, `added_on`, `ip_address`, `image1`, `image2`, `status`)"
            		+ " VALUES"
            		+ " ('"+userId+"','"+username+"','NA','"+date+"','"+ipAddress+"','"+image1+"','"+image2+"','1')";

            Connection con = DbConnection.getConnection();
            System.out.println("sql : "+sql);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
