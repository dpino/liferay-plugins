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

CalendarEventsListsDisplayTerms displayTerms = new CalendarEventsListsDisplayTerms(renderRequest);
CalendarEventsListsSearchTerms searchTerms = new CalendarEventsListsSearchTerms(renderRequest);

final java.text.SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
final java.util.Date currentDate = new Date();

// First Day of Month
java.util.Calendar calendar = java.util.Calendar.getInstance();
calendar.setTime(currentDate);
calendar.set(java.util.Calendar.DATE, 1);
java.util.Date startDate = calendar.getTime();

// Last Day of Month
calendar.set(java.util.Calendar.DATE, calendar.getActualMaximum(java.util.Calendar.DATE));
java.util.Date endDate = calendar.getTime();

List<CalendarResource> searchableResources = CalendarResourceUtil.getSearchableCalendarResources(themeDisplay.getCompanyId());

%>

<liferay-ui:search-toggle
	buttonLabel="search"
	displayTerms="<%= displayTerms %>"
	id="toggle_id_calendar_resource_search"
>
	<aui:fieldset>

        <!-- Start Date -->
        <label><b>Start date</b></label>
        <div class="aui-datepicker aui-helper-clearfix" id="startDatePicker">
            <input type="text" name="<%= searchTerms.START_DATE %>" id="<%= searchTerms.START_DATE %>" size="30" />
        </div>

        <!-- End Date -->
        <label><b>End date</b></label>
        <div class="aui-datepicker aui-helper-clearfix" id="endDatePicker">
            <input type="text" name="<%= searchTerms.END_DATE %>" id="<%= searchTerms.END_DATE%>" size="30" />
        </div>

        <!-- CalendarResources -->
        <aui:select label="Calendar Resource" name="<%= searchTerms.RESOURCES %>" multiple="true" style="width: 400px;">
            <% for (CalendarResource each : searchableResources) { %>
                <aui:option value="<%= each.getCalendarResourceId() %>"><%= each.getName(locale) %></aui:option>
            <% } %>
        </aui:select>

	</aui:fieldset>

    <aui:script>

        AUI().use('aui-datepicker', function(A) {
           var simpleDatepicker1 = new A.DatePicker({
             trigger: '#<%= searchTerms.START_DATE %>',
           }).render('#startDatePicker');
           A.one('#<%= searchTerms.START_DATE %>').val("<%= sdf.format(startDate) %>");

           var simpleDatepicker1 = new A.DatePicker({
            trigger: '#<%= searchTerms.END_DATE %>',
           }).render('#endDatePicker');
           A.one('#<%= searchTerms.END_DATE %>').val("<%= sdf.format(endDate) %>");
        });

    </aui:script>

</liferay-ui:search-toggle>
