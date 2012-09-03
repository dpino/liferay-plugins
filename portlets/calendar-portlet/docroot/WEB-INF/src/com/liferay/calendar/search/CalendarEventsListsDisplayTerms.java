/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
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

package com.liferay.calendar.search;

import com.liferay.portal.kernel.dao.search.DisplayTerms;
import com.liferay.portal.kernel.util.ParamUtil;

import javax.portlet.PortletRequest;

/**
 * @author Diego Pino García <dpino@igalia.com>
 */
public class CalendarEventsListsDisplayTerms extends DisplayTerms {

	public static final String NAME = "name";

	public static final String START_DATE = "start_date";

	public static final String END_DATE = "end_date";

	public static final String ATTENDANTS = "attendants";

	public CalendarEventsListsDisplayTerms(PortletRequest portletRequest) {
		super(portletRequest);

		name = ParamUtil.getString(portletRequest, NAME);
		startDate = ParamUtil.getString(portletRequest, START_DATE);
		endDate = ParamUtil.getString(portletRequest, END_DATE);
		attendants = ParamUtil.getString(portletRequest, ATTENDANTS);
	}

	public String getName() {
		return name;
	}

	public String getStartDate() {
		return startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public String getAttendants() {
		return attendants;
	}

	protected String name;
	protected String startDate;
	protected String endDate;
	protected String attendants;

	@Override
	public boolean isAdvancedSearch() {
		return true;
	}

	@Override
	public boolean isAndOperator() {
		return true;
	}
	
}