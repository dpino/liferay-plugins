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

import com.liferay.calendar.model.CalendarEvent;
import com.liferay.portal.kernel.util.OrderByComparator;

/**
 * @author Diego Pino García <dpino@igalia.com>
 */
public class CalendarEventEndDateComparator extends OrderByComparator {
	
	public CalendarEventEndDateComparator() {
		this(false);
	}

	public CalendarEventEndDateComparator(boolean ascending) {
		_ascending = ascending;
	}

	@Override
	public int compare(Object obj1, Object obj2) {
		CalendarEvent calendarEvent1 = (CalendarEvent)obj1;
		CalendarEvent calendarEvent2 = (CalendarEvent)obj2;

		Long startDate1 = Long.valueOf(calendarEvent1.getStartDate());
		Long startDate2 = Long.valueOf(calendarEvent2.getEndDate());
		
		int value = startDate1.compareTo(startDate2);
		
		if (_ascending) {
			return value;
		}
		else {
			return -value;
		}
	}

	@Override
	public boolean isAscending() {
		return _ascending;
	}

	private boolean _ascending;

}