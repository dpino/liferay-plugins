package com.liferay.calendar.util;

import com.liferay.calendar.model.CalendarBooking;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;

/**
 * 
 * @author Diego Pino García <dpino@igalia.com>
 *
 */
public class CalendarBookingUtil {

	public static boolean isDisabled(CalendarBooking calendarBooking) {
		if (calendarBooking == null) return false;
		try {
			CalendarBooking parentCalendarBooking = calendarBooking
					.getParentCalendarBooking();
			return calendarBooking.getCalendarBookingId() != parentCalendarBooking
					.getCalendarBookingId();
		} catch (PortalException e) {
			e.printStackTrace();
		} catch (SystemException e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
