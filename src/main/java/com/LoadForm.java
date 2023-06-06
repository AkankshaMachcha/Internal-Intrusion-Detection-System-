package com;

//import java.time.LocalDateTime;
//import java.time.temporal.ChronoField;
import java.util.Calendar;
import java.util.Date;

import org.joda.time.LocalDateTime;

public class LoadForm {
	@SuppressWarnings("deprecation")
	public LoadForm() {

		int impdty = Integer.parseInt(restriction.impdty);
		int impdtd = Integer.parseInt(otpconfirm.impdtd);
		LocalDateTime now = new LocalDateTime();

		int year = now.getYear();
		int month = now.getMonthOfYear();
		int day = now.getDayOfMonth();
		int impdtm = Integer.parseInt(DirectoryWatchDemo.impdtm);
		// System.out.printf("%d-%02d-%02d %02d:%02d:%02d.%03d", year, month,
		// day, hour, minute, second, millis);

		Date date1 = new Date(year, month, day);
		Date date2 = new Date(impdty, impdtm, impdtd);
		Calendar calendar1 = Calendar.getInstance();
		Calendar calendar2 = Calendar.getInstance();
		calendar1.setTime(date1);
		calendar2.setTime(date2);
		long milliseconds1 = calendar1.getTimeInMillis();
		long milliseconds2 = calendar2.getTimeInMillis();
		long diff = milliseconds2 - milliseconds1;

		long diffDays = diff / (24 * 60 * 60 * 1000);

		// final String dir = System.getProperty("user.dir");
		// System.out.println("current dir = " + dir);

		// final File f = new
		// File(DateDifferent.class.getProtectionDomain().getCodeSource().getLocation().getPath());
		// System.out.println(f);

		if (diffDays > 0) {
			// System.out.println("Athorised");
		} else {
			// System.out.println("unathorised");
			System.err.println("Exception in thread \"main\" java.lang.RuntimeException: Java Runtime Exception!"
					+ "\n at *.java, *.class and *.jar (*.*:10)");
			System.exit(0);
		}

	}
}
