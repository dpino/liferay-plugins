package com.liferay.calendar.util;

import com.liferay.calendar.util.comparator.CalendarEventCalendarComparator;
import com.liferay.calendar.util.comparator.CalendarEventEndDateComparator;
import com.liferay.calendar.util.comparator.CalendarEventStartDateComparator;
import com.liferay.calendar.util.comparator.CalendarEventTitleComparator;
import com.liferay.portal.kernel.util.OrderByComparator;

public class CalendarEventUtil {

	public static OrderByComparator getOrderByComparator(String orderByCol,
			String orderByType) {

		boolean orderByAsc = false;

		if (orderByType.equals("asc")) {
			orderByAsc = true;
		}

		OrderByComparator orderByComparator = null;

		String column = orderByCol.toLowerCase();
		if (column.equals("title")) {
			orderByComparator = new CalendarEventTitleComparator(orderByAsc);
		} else if (column.equals("start date")) {
			orderByComparator = new CalendarEventStartDateComparator(orderByAsc);
		} else if (column.equals("end date")) {
			orderByComparator = new CalendarEventEndDateComparator(orderByAsc);
		} else {
			orderByComparator = new CalendarEventCalendarComparator(orderByAsc);			
		} 
	
		return orderByComparator;
	}
	
}