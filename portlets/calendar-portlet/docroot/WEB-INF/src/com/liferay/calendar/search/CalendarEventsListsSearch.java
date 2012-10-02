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

import com.liferay.calendar.model.CalendarResource;
import com.liferay.calendar.util.CalendarResourceUtil;
import com.liferay.calendar.util.PortletKeys;
import com.liferay.portal.kernel.dao.search.SearchContainer;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portlet.PortalPreferences;
import com.liferay.portlet.PortletPreferencesFactoryUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.portlet.PortletRequest;
import javax.portlet.PortletURL;

/**
 * @author Eduardo Lundgren
 * @author Fabio Pezzutto
 */
public class CalendarEventsListsSearch extends SearchContainer<CalendarResource> {

	static List<String> headerNames = new ArrayList<String>();
	static Map<String, String> orderableHeaders = new HashMap<String, String>();

	static {
		headerNames.add("name");
		headerNames.add("start date");
		headerNames.add("end date");
		headerNames.add("attendants");

		orderableHeaders.put("name", "name");
	}

	public static final String EMPTY_RESULTS_MESSAGE =
		"no-calendar-resources-were-found";

	public CalendarEventsListsSearch(
		PortletRequest portletRequest, String curParam,
		PortletURL iteratorURL) {

		super(
			portletRequest, new CalendarEventsListsDisplayTerms(portletRequest),
			new CalendarEventsListsSearchTerms(portletRequest), curParam,
			DEFAULT_DELTA, iteratorURL, null, EMPTY_RESULTS_MESSAGE);
		
		String startDate = portletRequest.getParameter("startDate");
		iteratorURL.setParameter("startDate", startDate != null ? startDate : "");
		String endDate = portletRequest.getParameter("endDate");
		iteratorURL.setParameter("endDate", endDate != null ? endDate : "");
		String[] resources = portletRequest.getParameterValues("resources");
		iteratorURL.setParameter("resources", resources != null ? resources : new String[0]);		
		
		try {
			PortalPreferences preferences =
				PortletPreferencesFactoryUtil.getPortalPreferences(
					portletRequest);

			String orderByCol = ParamUtil.getString(
				portletRequest, "orderByCol");
			String orderByType = ParamUtil.getString(
				portletRequest, "orderByType");

			if (Validator.isNotNull(orderByCol) &&
				Validator.isNotNull(orderByType)) {

				preferences.setValue(
					PortletKeys.CALENDAR, "users-resources-order-by-col",
					orderByCol);
				preferences.setValue(
					PortletKeys.CALENDAR, "users-resources-order-by-type",
					orderByType);
			}
			else {
				orderByCol = preferences.getValue(
					PortletKeys.CALENDAR, "users-resources-order-by-col",
					"last-name");
				orderByType = preferences.getValue(
					PortletKeys.CALENDAR, "users-resources-order-by-type",
					"asc");
			}

			OrderByComparator orderByComparator =
				CalendarResourceUtil.getOrderByComparator(
					orderByCol, orderByType);

			setOrderableHeaders(orderableHeaders);
			setOrderByCol(orderByCol);
			setOrderByType(orderByType);
			setOrderByComparator(orderByComparator);
		}
		catch (Exception e) {
			_log.error(e);
		}
	}

	private static Log _log = LogFactoryUtil.getLog(
		CalendarEventsListsSearch.class);

}
