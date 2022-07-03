package utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateFormatter {
	
	public static Calendar dateConverter(String dateStr, int hora, int mins) {
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = formato.parse(dateStr);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		date.setHours(hora);
		date.setMinutes(mins);
		date.setSeconds(0);
		Calendar calendarDate = Calendar.getInstance();
		calendarDate.setTime(date);
		
		return calendarDate;
	}

}
