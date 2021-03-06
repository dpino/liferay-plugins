/**
 * Copyright (c) 2012 Igalia, S.L. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.calendar.util.comparator;

import java.util.Date;

import com.liferay.calendar.model.CalendarEvent;
import com.liferay.portal.kernel.util.OrderByComparator;

/**
 * @author Diego Pino García <dpino@igalia.com>
 */
public class CalendarEventStartDateComparator extends OrderByComparator {

	public CalendarEventStartDateComparator() {
		this(false);
	}

	public CalendarEventStartDateComparator(boolean ascending) {
		_ascending = ascending;
	}

	@Override
	public int compare(Object obj1, Object obj2) {
		CalendarEvent calendarEvent1 = (CalendarEvent)obj1;
		CalendarEvent calendarEvent2 = (CalendarEvent)obj2;

		Date date1 = new Date(calendarEvent1.getStartDate());
		Date date2 = new Date(calendarEvent2.getStartDate());
		
		int value = date1.compareTo(date2);
		
		if (_ascending) {
			return (int) value;
		}
		else {
			return (int) -value;
		}
	}

	@Override
	public boolean isAscending() {
		return _ascending;
	}

	private boolean _ascending;

}