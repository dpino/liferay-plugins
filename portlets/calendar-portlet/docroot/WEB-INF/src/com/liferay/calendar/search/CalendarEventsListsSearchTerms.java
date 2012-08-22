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

import static java.util.Calendar.MILLISECOND;
import static java.util.Calendar.SECOND;
import static java.util.Calendar.MINUTE;
import static java.util.Calendar.HOUR_OF_DAY;

import com.liferay.portal.kernel.dao.search.DAOParamUtil;
import com.liferay.portal.kernel.dao.search.DisplayTerms;

import javax.portlet.PortletRequest;

import java.util.Map;
import java.util.Enumeration;
import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 * @author Eduardo Lundgren
 * @author Fabio Pezzutto
 */
public class CalendarEventsListsSearchTerms extends DisplayTerms {

    private static final SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");

    public static final String START_DATE = "startDate";

    public static final String END_DATE = "endDate";

    public static final String RESOURCES = "resources";

	public CalendarEventsListsSearchTerms(PortletRequest portletRequest) {
		super(portletRequest);

        Map<String, String[]> map = portletRequest.getParameterMap();

        startDate = beginningOfDay(toDate(get(map, START_DATE)));
        endDate = endOfDay(toDate(get(map, END_DATE)));
        resources = toLong(map, RESOURCES);
	}

    private long[] toLong(Map<String, String[]> map, String key) {
        String[] values = map.get(key);
        if (values == null) return null;

        long[] result = new long[values.length];
        int i = 0;

        for (String each: values) {
            result[i++] = Long.valueOf(each);
        }
        return result;
    }

    private long endOfDay(Date date) {
        if (date == null) return 0L;

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(MILLISECOND, 999);
        calendar.set(SECOND, 59);
        calendar.set(MINUTE, 59);
        calendar.set(HOUR_OF_DAY, 23);
        return timestamp(calendar.getTime());
    }

    private long beginningOfDay(Date date)  {
        if (date == null) return 0L;

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.clear(MILLISECOND);
        calendar.clear(SECOND);
        calendar.clear(MINUTE);
        calendar.clear(HOUR_OF_DAY);
        return timestamp(calendar.getTime());
    }

    private String get(Map<String, String[]> map, String key) {
        String[] values = map.get(key);
        return values != null ? values[0] : "";
    }

    private long timestamp(Date date) {
        return date.getTime();
    }

    private Date toDate(String date) {
        try {
            return sdf.parse(date);
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public long getStartDate() {
        return startDate;
    }

    public long getEndDate() {
        return endDate;
    }

    public long[] getResources() {
        return resources;
    }

    protected long startDate;
    protected long endDate;
    protected long[] resources;

}
