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
public class CalendarEventCalendarComparator extends OrderByComparator {

	public CalendarEventCalendarComparator() {
		this(false);
	}

	public CalendarEventCalendarComparator(boolean ascending) {
		_ascending = ascending;
	}

	@Override
	public int compare(Object obj1, Object obj2) {
		CalendarEvent calendarEvent1 = (CalendarEvent)obj1;
		CalendarEvent calendarEvent2 = (CalendarEvent)obj2;

		String calendar1 = calendarEvent1.getCalendarResourceName();
		String calendar2 = calendarEvent2.getCalendarResourceName();
		
		int value = calendar1.compareTo(calendar2);

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