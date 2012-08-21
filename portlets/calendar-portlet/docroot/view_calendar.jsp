<%--
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
--%>

<%@ include file="/init.jsp" %>

<%
String activeView = ParamUtil.getString(request, "activeView", defaultView);
long currentDate = ParamUtil.getLong(request, "currentDate", now.getTimeInMillis());

List<Calendar> groupCalendars = null;

if (groupCalendarResource != null) {
	groupCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, new long[] {groupCalendarResource.getCalendarResourceId()}, null, true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, (OrderByComparator)null);
}

List<Calendar> userCalendars = null;

if (userCalendarResource != null) {
	userCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, new long[] {userCalendarResource.getCalendarResourceId()}, null, true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, (OrderByComparator)null);
}

// Location Calendars
List<Calendar> locationCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, null, "Location", true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, new CalendarNameComparator(true), ActionKeys.MANAGE_BOOKINGS);

JSONArray groupCalendarsJSONArray = CalendarUtil.toCalendarsJSONArray(themeDisplay, groupCalendars);
JSONArray userCalendarsJSONArray = CalendarUtil.toCalendarsJSONArray(themeDisplay, userCalendars);
JSONArray locationCalendarsJSONArray = CalendarUtil.toCalendarsJSONArray(themeDisplay, locationCalendars);

%>

<aui:fieldset cssClass="calendar-portlet-column-parent">
	<aui:column cssClass="calendar-portlet-column-options">
		<div id="<portlet:namespace />calendarListContainer">
			<a class="aui-toggler-header-expanded calendar-portlet-list-header" href="javascript:void(0);">
				<span class="calendar-portlet-list-arrow"></span>

				<span class="calendar-portlet-list-text"><liferay-ui:message key="my-calendars" /></span>

				<c:if test="<%= userCalendarResource != null %>">
					<span class="aui-calendar-list-item-arrow" data-calendarResourceId="<%= userCalendarResource.getCalendarResourceId() %>" tabindex="0"></span>
				</c:if>
			</a>

			<div class="calendar-portlet-calendar-list" id="<portlet:namespace />myCalendarList"></div>

			<a class="calendar-portlet-list-header aui-toggler-header-expanded" href="javascript:void(0);">
				<span class="calendar-portlet-list-arrow"></span>

				<span class="calendar-portlet-list-text"><liferay-ui:message key="location-calendars" /></span>
			</a>

			<div class="calendar-portlet-calendar-list" id="<portlet:namespace />locationCalendarList">
				<input class="calendar-portlet-add-calendars-input" id="<portlet:namespace />addLocationCalendar" placeholder="<liferay-ui:message key="add-location-calendars" />" type="text" />
			</div>

			<c:if test="<%= groupCalendarResource != null %>">
				<a class="aui-toggler-header-expanded calendar-portlet-list-header" href="javascript:void(0);">
					<span class="calendar-portlet-list-arrow"></span>

					<span class="calendar-portlet-list-text"><liferay-ui:message key="current-site-calendars" /></span>

					<c:if test="<%= CalendarResourcePermission.contains(permissionChecker, groupCalendarResource, ActionKeys.VIEW) %>">
						<span class="aui-calendar-list-item-arrow" data-calendarResourceId="<%= groupCalendarResource.getCalendarResourceId() %>" tabindex="0"></span>
					</c:if>
				</a>

				<div class="calendar-portlet-calendar-list" id="<portlet:namespace />siteCalendarList"></div>
			</c:if>
		</div>

		<div id="<portlet:namespace />message"></div>
	</aui:column>

	<aui:column columnWidth="100">
		<liferay-util:include page="/scheduler.jsp" servletContext="<%= application %>">
			<liferay-util:param name="activeView" value="<%= activeView %>" />
			<liferay-util:param name="currentDate" value="<%= String.valueOf(currentDate) %>" />

			<portlet:renderURL var="editCalendarBookingURL">
				<portlet:param name="jspPage" value="/edit_calendar_booking.jsp" />
				<portlet:param name="redirect" value="<%= String.valueOf(renderResponse.createRenderURL()) %>" />
				<portlet:param name="activeView" value="{activeView}" />
				<portlet:param name="allDay" value="{allDay}" />
				<portlet:param name="calendarBookingId" value="{calendarBookingId}" />
				<portlet:param name="calendarId" value="{calendarId}" />
				<portlet:param name="currentDate" value="{currentDate}" />
				<portlet:param name="endDate" value="{endDate}" />
				<portlet:param name="startDate" value="{startDate}" />
				<portlet:param name="titleCurrentValue" value="{titleCurrentValue}" />
			</portlet:renderURL>

			<liferay-util:param name="editCalendarBookingURL" value="<%= editCalendarBookingURL %>" />

			<liferay-util:param name="readOnly" value="<%= String.valueOf(false) %>" />
		</liferay-util:include>
	</aui:column>
</aui:fieldset>

<%@ include file="/view_calendar_menus.jspf" %>

<aui:script use="aui-toggler,liferay-calendar-list,liferay-scheduler,liferay-store,json">
	<c:if test="<%= userCalendars != null %>">
		Liferay.CalendarUtil.DEFAULT_CALENDAR = <%= CalendarUtil.toCalendarJSONObject(themeDisplay, userCalendars.get(0)) %>;
	</c:if>

	var syncVisibleCalendarsMap = function() {
		Liferay.CalendarUtil.syncVisibleCalendarsMap(
			window.<portlet:namespace />myCalendarList,
			window.<portlet:namespace />locationCalendarList,
			window.<portlet:namespace />siteCalendarList
		);
	}

	window.<portlet:namespace />myCalendarList = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: syncVisibleCalendarsMap
			},
			boundingBox: '#<portlet:namespace />myCalendarList',

			<%
			updateCalendarsJSONArray(request, userCalendarsJSONArray);
			%>

			calendars: <%= userCalendarsJSONArray %>,
			simpleMenu: window.<portlet:namespace />calendarsMenu
		}
	).render();

	window.<portlet:namespace />locationCalendarList = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					syncVisibleCalendarsMap();

					window.<portlet:namespace />scheduler.loadCalendarBookings();

					var calendarIds = A.Array.invoke(event.newVal, 'get', 'calendarId');

					Liferay.Store('locationCalendars', calendarIds.join());
				}
			},
			boundingBox: '#<portlet:namespace />locationCalendarList',

			<%
			updateCalendarsJSONArray(request, locationCalendarsJSONArray);
			%>

			calendars: <%= locationCalendarsJSONArray %>,
			simpleMenu: window.<portlet:namespace />calendarsMenu
		}
	).render();

	window.<portlet:namespace />siteCalendarList = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: syncVisibleCalendarsMap
			},
			boundingBox: '#<portlet:namespace />siteCalendarList',

			<%
			updateCalendarsJSONArray(request, groupCalendarsJSONArray);
			%>

			calendars: <%= groupCalendarsJSONArray %>,
			simpleMenu: window.<portlet:namespace />calendarsMenu
		}
	).render();

	syncVisibleCalendarsMap();

	<portlet:namespace />scheduler.on(
		{
			'scheduler-calendar:visibleChange': function(event) {
				var instance = this;

				var calendar = event.target;

				Liferay.Store('calendar-portlet-calendar-' + calendar.get('calendarId') + '-visible', event.newVal);
			}
		}
	);

	window.<portlet:namespace />toggler = new A.TogglerDelegate(
		{
			animated: true,
			container: '#<portlet:namespace />calendarListContainer',
			content: '.calendar-portlet-calendar-list',
			header: '.calendar-portlet-list-header'
		}
	);

	<liferay-portlet:resourceURL copyCurrentRenderParameters="<%= false %>" id="calendarResources" var="calendarResourcesURL" />

	var addLocationCalendarInput = A.one('#<portlet:namespace />addLocationCalendar');

	Liferay.CalendarUtil.createCalendarsAutoComplete(
		'<%= calendarResourcesURL %>',
		addLocationCalendarInput,
		function(event) {
			window.<portlet:namespace />locationCalendarList.add(event.result.raw);

			addLocationCalendarInput.val('');
		}
	);
</aui:script>

<%!
protected void updateCalendarsJSONArray(HttpServletRequest request, JSONArray calendarsJSONArray) {
	for (int i = 0; i < calendarsJSONArray.length(); i++) {
		JSONObject jsonObject = calendarsJSONArray.getJSONObject(i);

		long calendarId = jsonObject.getLong("calendarId");

		jsonObject.put("color", GetterUtil.getString(SessionClicks.get(request, "calendar-portlet-calendar-" + calendarId + "-color", jsonObject.getString("color"))));
		jsonObject.put("visible", GetterUtil.getBoolean(SessionClicks.get(request, "calendar-portlet-calendar-" + calendarId + "-visible", "true")));
	}
}
%>
