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

package com.liferay.calendar.service.persistence;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import com.liferay.calendar.model.Calendar;
import com.liferay.calendar.model.CalendarBooking;
import com.liferay.calendar.model.CalendarEvent;
import com.liferay.calendar.model.CalendarResource;
import com.liferay.calendar.model.impl.CalendarBookingImpl;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryPos;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.SQLQuery;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.dao.orm.Type;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.security.permission.InlineSQLHelperUtil;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;
import com.liferay.util.dao.orm.CustomSQLUtil;

/**
 * @author Eduardo Lundgren
 * @author Fabio Pezzutto
 */
public class CalendarBookingFinderImpl
	extends BasePersistenceImpl<CalendarBooking>
	implements CalendarBookingFinder {	

	public static final String COUNT_BY_C_G_C_C_P_T_D_L_S_E_S =
		CalendarBookingFinder.class.getName() +
			".countByC_G_C_C_P_T_D_L_S_E_S";

	public static final String FIND_BY_FUTURE_REMINDERS =
	CalendarBookingFinder.class.getName() + ".findByFutureReminders";

	public static final String FIND_BY_C_G_C_C_P_T_D_L_S_E_S =
		CalendarBookingFinder.class.getName() +
			".findByC_G_C_C_P_T_D_L_S_E_S";

	public int countByKeywords(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String keywords, long startDate, long endDate, int[] statuses)
		throws SystemException {

		String[] titles = null;
		String[] descriptions = null;
		String[] locations = null;
		boolean andOperator = false;

		if (Validator.isNotNull(keywords)) {
			titles = CustomSQLUtil.keywords(keywords);
			descriptions = CustomSQLUtil.keywords(keywords, false);
			locations = CustomSQLUtil.keywords(keywords);
		}
		else {
			andOperator = true;
		}

		return countByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator);
	}

	public int countByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String title, String description, String location, long startDate,
			long endDate, int[] statuses, boolean andOperator)
		throws SystemException {

		String[] titles = CustomSQLUtil.keywords(title);
		String[] descriptions = CustomSQLUtil.keywords(description, false);
		String[] locations = CustomSQLUtil.keywords(location);

		return countByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator);
	}

	public int countByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, int[] statuses, boolean andOperator)
		throws SystemException {

		return doCountByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator, false);
	}

	public int filterCountByKeywords(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String keywords, long startDate, long endDate, int[] statuses)
		throws SystemException {

		String[] titles = null;
		String[] descriptions = null;
		String[] locations = null;
		boolean andOperator = false;

		if (Validator.isNotNull(keywords)) {
			titles = CustomSQLUtil.keywords(keywords);
			descriptions = CustomSQLUtil.keywords(keywords, false);
			locations = CustomSQLUtil.keywords(keywords);
		}
		else {
			andOperator = true;
		}

		return filterCountByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator);
	}

	public int filterCountByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String title, String description, String location, long startDate,
			long endDate, int[] statuses, boolean andOperator)
		throws SystemException {

		String[] titles = CustomSQLUtil.keywords(title);
		String[] descriptions = CustomSQLUtil.keywords(description, false);
		String[] locations = CustomSQLUtil.keywords(location);

		return filterCountByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator);
	}

	public int filterCountByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, int[] statuses, boolean andOperator)
		throws SystemException {

		return doCountByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, statuses, andOperator, true);
	}

	public List<CalendarBooking> filterFindByKeywords(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String keywords, long startDate, long endDate, boolean recurring,
			int[] statuses, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		String[] titles = null;
		String[] descriptions = null;
		String[] locations = null;
		boolean andOperator = false;

		if (Validator.isNotNull(keywords)) {
			titles = CustomSQLUtil.keywords(keywords);
			descriptions = CustomSQLUtil.keywords(keywords, false);
			locations = CustomSQLUtil.keywords(keywords);
		}
		else {
			andOperator = true;
		}

		return filterFindByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator);
	}

	public List<CalendarBooking> filterFindByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String title, String description, String location, long startDate,
			long endDate, boolean recurring, int[] statuses,
			boolean andOperator, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		String[] titles = CustomSQLUtil.keywords(title);
		String[] descriptions = CustomSQLUtil.keywords(description, false);
		String[] locations = CustomSQLUtil.keywords(location);

		return filterFindByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator);
	}

	public List<CalendarBooking> filterFindByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, boolean recurring, int[] statuses,
			boolean andOperator, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		return doFindByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator, true);
	}

	public int findCalendarEventsCount(long userId, Long startDate,
			Long endDate, long[] calendarResourceIds, Locale locale) throws SystemException {
		return findCalendarEvents(userId, startDate, endDate,
				calendarResourceIds, QueryUtil.ALL_POS, QueryUtil.ALL_POS,
				locale).size();
	}
	
	public Map<Long, String> getFoodAndDrinksMap() throws SystemException {
		Map<Long, String> result = new HashMap<Long, String>();
		result.put(Long.valueOf(0), "NONE");

		Session session = null;		
		try {
			session = openSession();

			String sql = "SELECT id, name FROM FoodAndDrinks ORDER BY name";
			SQLQuery query = session.createSQLQuery(sql);
			query.addScalar("id", Type.LONG);
			query.addScalar("name", Type.STRING);
			
			List<Object[]> list = (List<Object[]>) QueryUtil.list(query,
					getDialect(), QueryUtil.ALL_POS, QueryUtil.ALL_POS);
			for (Object[] each: list) {
				result.put((Long) each[0], (String) each[1]);
			}
		} catch (Exception e) {
			throw new SystemException(e);			
		} finally {
			session.close();
		}
		return result;
	}
	
	public String getFoodAndDrinksName(long id) throws SystemException {
		Session session = null;		
		try {
			session = openSession();

			String sql = "SELECT name FROM FoodAndDrinks WHERE id = %d";
			SQLQuery query = session.createSQLQuery(String.format(sql, id));
			query.addScalar("name", Type.STRING);
			Object[] object = (Object[]) query.uniqueResult();
			return object != null ? (String) object[0] : "";
		} catch (Exception e) {
			throw new SystemException(e);
		} finally {
			session.close();
		}
	}
	
	public List<CalendarEvent> findCalendarEvents(long userId, Long startDate,
			Long endDate, long[] calendarResourceIds, int start, int end,
			Locale locale) throws SystemException {
		
		Session session = null;
		
		List<CalendarEvent> result = new ArrayList<CalendarEvent>();
		try {
			session = openSession();
			
			String sql = "FROM CalendarBooking WHERE userId = :userId";
			if (startDate != null && startDate != 0) {
				sql += String.format(" AND startDate >= %d", startDate);
			}
			if (endDate != null && endDate != 0) {
				sql += String.format(" AND endDate <= %d", endDate);				
			}
			if (calendarResourceIds == null) {
				calendarResourceIds = onlyIds(getNotUserCalendarResources(locale));
			}
			sql += String.format(" AND calendarResourceId IN (%s)",
					StringUtil.merge(calendarResourceIds, ","));
			
			Query query = session.createQuery(sql);
			query.setLong("userId", userId);
			
			List<CalendarBooking> parentCalendarBookings = query.list();
			if (parentCalendarBookings.isEmpty()) return result;
			
			sql = String
					.format("FROM CalendarBooking WHERE parentCalendarBookingId IN (%s)",
							getParentCalendarIds(parentCalendarBookings));
			query = session.createQuery(sql);
			
			QueryUtil.list(query, getDialect(), start, end);
			List<CalendarBooking> bookings = query.list();

			// Create map with id of the booking and list of people that are part of that booking
			Map<Long, Set<String>> eventAttendants = new HashMap<Long, Set<String>>();
			for (CalendarBooking each: bookings) {
				String name = findUserNameByCalendarResource(each.getCalendarResourceId());
				if (!name.isEmpty()) {
					long key = each.getParentCalendarBookingId();
					Set<String> attendants = eventAttendants.get(key);
					if (attendants == null) {
						attendants = new HashSet<String>();
					}
					attendants.add(name);
					eventAttendants.put(key, attendants);
				}
			}
			
			// For each booked resource create entity with name of the resource,
			// what time is being used and people attending
			for(CalendarBooking each: bookings) {
				if (!isUserCalendar(locale, each.getCalendar())) {
					Set<String> attendants = eventAttendants.get(each
							.getParentCalendarBookingId());
					CalendarEvent event = new CalendarEvent(each.getUserId(),
							each.getUserName(), each.getTitle(),
							each.getStartDate(), each.getEndDate(),
							each.getCalendarResourceId(), each
									.getCalendarResource().getName(),
							new ArrayList<String>(attendants));
					result.add(event);
				}
			}
			
			return result;			
		}
		catch (Exception e) {
			throw new SystemException(e);
		}
		finally {
			closeSession(session);
		}
		
	}
	
	private long[] onlyIds(List<CalendarResource> list) {
		long[] result = new long[list.size()];
		int i = 0;
		for (CalendarResource each: list) {
			result[i++] = each.getCalendarResourceId();
		}
		return result;
	}

	private boolean isUserCalendar(Locale locale, Calendar calendar) throws SystemException {
		return calendar.getName(locale).equals(calendar.getUserName());
	}
	
	/**
	 * Returns all {@link CalendarResource} that don't represent the User's
	 * default {@link CalendarResource}
	 * 
	 * For example, user 'John Smith' has a {@link CalendarResource} called
	 * 'John Smith', so that {@link CalendarResource} won't be in the list
	 * 
	 * @param locale
	 * @return
	 * @throws SystemException
	 */
	private List<CalendarResource> getNotUserCalendarResources(Locale locale) throws SystemException {
		List<CalendarResource> result = new ArrayList<CalendarResource>();
		Session session = null;
		try {
			session = openSession();
			Query query = session.createQuery("FROM Calendar");
			List<Calendar> calendars = query.list();
			for (Calendar each: calendars) {
				if (!each.getName(locale).equals(each.getUserName())) {
					result.add(each.getCalendarResource());
				}
			}
			return result;
		} catch (Exception e) {
			throw new SystemException(e);
		} finally {
			session.close();			
		}
	}
	
	private String getParentCalendarIds(List<CalendarBooking> calendarBookings) {		
		Set<Long> ids = new HashSet<Long>();
		for (CalendarBooking each: calendarBookings) {
			ids.add(each.getParentCalendarBookingId());
		}
		return StringUtil.merge(ids, ",");
	}

	private String findUserNameByCalendarResource(long calendarResourceId) throws SystemException {
		Session session = null;
		
		try {
			session = openSession();
			
			String sql = "FROM Calendar WHERE calendarResourceId = :calendarResourceId";
			Query query = session.createQuery(sql);
			query.setLong("calendarResourceId", calendarResourceId);
			Calendar calendar = (Calendar) query.uniqueResult();
			return (calendar != null) ? calendar.getUserName() : null;
		} catch (Exception e) {
			throw new SystemException(e);			
		} finally {
			closeSession(session);
		}
		
	}
	
	private SimpleDateFormat sdf = new SimpleDateFormat();
	
	public java.util.Date getEndDate(final Date now) throws ParseException {
	    java.util.Calendar calendar = java.util.Calendar.getInstance();

	    calendar.setTime(now);
	    String endDate = ""; 
	    if (endDate != null && !endDate.isEmpty()) {
	        return sdf.parse(endDate);
	    } else {
	        calendar.set(java.util.Calendar.DATE,
	            calendar.getActualMaximum(java.util.Calendar.DATE));
	        return calendar.getTime();
	    }
	}		

	public List<CalendarBooking> findByFutureReminders(long startDate)
		throws SystemException {

		Session session = null;

		try {
			session = openSession();

			String sql = CustomSQLUtil.get(FIND_BY_FUTURE_REMINDERS);

			SQLQuery q = session.createSQLQuery(sql);

			q.addEntity("CalendarBooking", CalendarBookingImpl.class);

			QueryPos qPos = QueryPos.getInstance(q);

			qPos.add(startDate);

			return q.list(true);
		}
		catch (Exception e) {
			throw new SystemException(e);
		}
		finally {
			closeSession(session);
		}
	}

	public List<CalendarBooking> findByKeywords(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String keywords, long startDate, long endDate, boolean recurring,
			int[] statuses, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		String[] titles = null;
		String[] descriptions = null;
		String[] locations = null;
		boolean andOperator = false;

		if (Validator.isNotNull(keywords)) {
			titles = CustomSQLUtil.keywords(keywords);
			descriptions = CustomSQLUtil.keywords(keywords, false);
			locations = CustomSQLUtil.keywords(keywords);
		}
		else {
			andOperator = true;
		}

		return findByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator);
	}

	public List<CalendarBooking> findByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String title, String description, String location, long startDate,
			long endDate, boolean recurring, int[] statuses,
			boolean andOperator, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		String[] titles = CustomSQLUtil.keywords(title);
		String[] descriptions = CustomSQLUtil.keywords(description, false);
		String[] locations = CustomSQLUtil.keywords(location);

		return findByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator);
	}

	public List<CalendarBooking> findByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, boolean recurring, int[] statuses,
			boolean andOperator, int start, int end,
			OrderByComparator orderByComparator)
		throws SystemException {

		return doFindByC_G_C_C_P_T_D_L_S_E_S(
			companyId, groupIds, calendarIds, calendarResourceIds,
			parentCalendarBookingId, titles, descriptions, locations, startDate,
			endDate, recurring, statuses, andOperator, start, end,
			orderByComparator, false);
	}

	protected int doCountByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, int[] statuses, boolean andOperator,
			boolean inlineSQLHelper)
		throws SystemException {

		titles = CustomSQLUtil.keywords(titles);
		descriptions = CustomSQLUtil.keywords(descriptions, false);
		locations = CustomSQLUtil.keywords(locations);

		Session session = null;

		try {
			session = openSession();

			String sql = CustomSQLUtil.get(COUNT_BY_C_G_C_C_P_T_D_L_S_E_S);

			if (inlineSQLHelper) {
				sql = InlineSQLHelperUtil.replacePermissionCheck(
					sql, CalendarBooking.class.getName(),
					"CalendarBooking.calendarBookingId", groupIds);
			}

			sql = StringUtil.replace(
				sql, "[$GROUP_ID$]", getGroupIds(groupIds));
			sql = StringUtil.replace(
				sql, "[$CALENDAR_ID$]", getCalendarIds(calendarIds));
			sql = StringUtil.replace(
				sql, "[$CALENDAR_RESOURCE_ID$]",
				getCalendarResourceIds(calendarResourceIds));
			sql = StringUtil.replace(sql, "[$STATUS$]", getStatuses(statuses));

			if (parentCalendarBookingId < 0) {
				sql = StringUtil.replace(
					sql, "(parentCalendarBookingId = ?) AND", StringPool.BLANK);
			}

			sql = CustomSQLUtil.replaceKeywords(
				sql, "lower(title)", StringPool.LIKE, false, titles);
			sql = CustomSQLUtil.replaceKeywords(
				sql, "description", StringPool.LIKE, false, descriptions);
			sql = CustomSQLUtil.replaceKeywords(
				sql, "lower(location)", StringPool.LIKE, false, locations);
			sql = CustomSQLUtil.replaceAndOperator(sql, andOperator);

			SQLQuery q = session.createSQLQuery(sql);

			q.addScalar(COUNT_COLUMN_NAME, Type.LONG);

			QueryPos qPos = QueryPos.getInstance(q);

			qPos.add(companyId);
			qPos.add(groupIds);

			if ((calendarIds != null) && (calendarIds.length > 0)) {
				qPos.add(calendarIds);
			}

			if ((calendarResourceIds != null) &&
				(calendarResourceIds.length > 0)) {

				qPos.add(calendarResourceIds);
			}

			if (parentCalendarBookingId >= 0) {
				qPos.add(parentCalendarBookingId);
			}

			qPos.add(titles, 2);
			qPos.add(descriptions, 2);
			qPos.add(locations, 2);

			if ((statuses != null) && (statuses.length > 0)) {
				qPos.add(statuses);
			}

			qPos.add(startDate);
			qPos.add(startDate);
			qPos.add(endDate);
			qPos.add(endDate);

			Iterator<Long> itr = q.iterate();

			if (itr.hasNext()) {
				Long count = itr.next();

				if (count != null) {
					return count.intValue();
				}
			}

			return 0;
		}
		catch (Exception e) {
			throw new SystemException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected List<CalendarBooking> doFindByC_G_C_C_P_T_D_L_S_E_S(
			long companyId, long[] groupIds, long[] calendarIds,
			long[] calendarResourceIds, long parentCalendarBookingId,
			String[] titles, String[] descriptions, String[] locations,
			long startDate, long endDate, boolean recurring, int[] statuses,
			boolean andOperator, int start, int end,
			OrderByComparator orderByComparator, boolean inlineSQLHelper)
		throws SystemException {

		titles = CustomSQLUtil.keywords(titles);
		descriptions = CustomSQLUtil.keywords(descriptions, false);
		locations = CustomSQLUtil.keywords(locations);

		Session session = null;

		try {
			session = openSession();

			String sql = CustomSQLUtil.get(FIND_BY_C_G_C_C_P_T_D_L_S_E_S);

			if (inlineSQLHelper) {
				sql = InlineSQLHelperUtil.replacePermissionCheck(
					sql, CalendarBooking.class.getName(),
					"CalendarBooking.calendarBookingId", groupIds);
			}

			sql = StringUtil.replace(
				sql, "[$GROUP_ID$]", getGroupIds(groupIds));
			sql = StringUtil.replace(
				sql, "[$CALENDAR_ID$]", getCalendarIds(calendarIds));
			sql = StringUtil.replace(
				sql, "[$CALENDAR_RESOURCE_ID$]",
				getCalendarResourceIds(calendarResourceIds));
			sql = StringUtil.replace(
				sql, "[$DATE_RANGE$]",
				getDateRange(startDate, endDate, recurring));
			sql = StringUtil.replace(sql, "[$STATUS$]", getStatuses(statuses));

			if (parentCalendarBookingId < 0) {
				sql = StringUtil.replace(
					sql, "(parentCalendarBookingId = ?) AND", StringPool.BLANK);
			}

			sql = CustomSQLUtil.replaceKeywords(
				sql, "lower(title)", StringPool.LIKE, false, titles);
			sql = CustomSQLUtil.replaceKeywords(
				sql, "description", StringPool.LIKE, false, descriptions);
			sql = CustomSQLUtil.replaceKeywords(
				sql, "lower(location)", StringPool.LIKE, false, locations);
			sql = CustomSQLUtil.replaceAndOperator(sql, andOperator);

			StringBundler sb = new StringBundler();

			if (orderByComparator != null) {
				appendOrderByComparator(
					sb, "CalendarBooking.", orderByComparator);
			}

			sql = StringUtil.replace(sql, "[$ORDER_BY$]", sb.toString());

			SQLQuery q = session.createSQLQuery(sql);

			q.addEntity("CalendarBooking", CalendarBookingImpl.class);

			QueryPos qPos = QueryPos.getInstance(q);

			qPos.add(companyId);
			qPos.add(groupIds);

			if ((calendarIds != null) && (calendarIds.length > 0)) {
				qPos.add(calendarIds);
			}

			if ((calendarResourceIds != null) &&
				(calendarResourceIds.length > 0)) {

				qPos.add(calendarResourceIds);
			}

			if (parentCalendarBookingId >= 0) {
				qPos.add(parentCalendarBookingId);
			}

			qPos.add(titles, 2);
			qPos.add(descriptions, 2);
			qPos.add(locations, 2);
			qPos.add(startDate);
			qPos.add(startDate);
			qPos.add(endDate);
			qPos.add(endDate);

			if (recurring) {
				qPos.add(endDate);
				qPos.add(endDate);
			}

			if ((statuses != null) && (statuses.length > 0)) {
				qPos.add(statuses);
			}

			return (List<CalendarBooking>)QueryUtil.list(
				q, getDialect(), start, end);
		}
		catch (Exception e) {
			throw new SystemException(e);
		}
		finally {
			closeSession(session);
		}
	}

	protected String getCalendarIds(long[] calendarIds) {
		if ((calendarIds == null) || (calendarIds.length == 0)) {
			return StringPool.BLANK;
		}

		StringBundler sb = new StringBundler(calendarIds.length * 2 + 1);

		sb.append(" (");

		for (int i = 0; i < calendarIds.length; i++) {
			sb.append("calendarId = ? ");

			if ((i + 1) != calendarIds.length) {
				sb.append("OR ");
			}
		}

		sb.append(") AND");

		return sb.toString();
	}

	protected String getCalendarResourceIds(long[] calendarResourceIds) {
		if ((calendarResourceIds == null) ||
				(calendarResourceIds.length == 0)) {

			return StringPool.BLANK;
		}

		StringBundler sb = new StringBundler(
				calendarResourceIds.length * 2 + 1);

		sb.append(" (");

		for (int i = 0; i < calendarResourceIds.length; i++) {
			sb.append("calendarResourceId = ? ");

			if ((i + 1) != calendarResourceIds.length) {
				sb.append("OR ");
			}
		}

		sb.append(") AND");

		return sb.toString();
	}

	protected String getDateRange(
		long startDate, long endDate, boolean recurring) {

		StringBundler sb = new StringBundler(7);

		sb.append("((startDate <= ? OR ? = -1) AND ");
		sb.append("(endDate >= ? OR ? = -1) AND ");
		sb.append("(recurrence IS NULL) ");

		if (recurring) {
			sb.append(" OR (");
			sb.append("(endDate <= ? OR ? = -1) AND ");
			sb.append("(recurrence IS NOT NULL))");
		}

		sb.append(")");

		return sb.toString();
	}

	protected String getGroupIds(long[] groupIds) {
		if (groupIds.length == 0) {
			return StringPool.BLANK;
		}

		StringBundler sb = new StringBundler(groupIds.length * 2);

		sb.append("(");

		for (int i = 0; i < groupIds.length; i++) {
			sb.append("groupId = ?");

			if ((i + 1) < groupIds.length) {
				sb.append(" OR ");
			}
		}

		sb.append(") AND");

		return sb.toString();
	}

	protected String getStatuses(int[] statuses) {
		if ((statuses == null) || (statuses.length == 0)) {
			return StringPool.BLANK;
		}

		StringBundler sb = new StringBundler(statuses.length * 2 + 1);

		sb.append(" (");

		for (int i = 0; i < statuses.length; i++) {
			sb.append("status = ? ");

			if ((i + 1) != statuses.length) {
				sb.append("OR ");
			}
		}

		sb.append(") ");

		return sb.toString();
	}

}
