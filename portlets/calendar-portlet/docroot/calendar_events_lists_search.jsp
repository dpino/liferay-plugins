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

<%!

public String toJSONArray(String[] array) {
    return array != null ? String.format("[%s]", StringUtil.merge(array, ",")) : "[]";
}

%>

<%
String key = "toggle_id_calendar_events_lists_search";
SessionClicks.put(request, key, "advanced");
%>

<%

CalendarEventsListsDisplayTerms displayTerms = new CalendarEventsListsDisplayTerms(renderRequest);
CalendarEventsListsSearchTerms searchTerms = new CalendarEventsListsSearchTerms(renderRequest);

Date today = new Date();

// Get startDate
String startDate = renderRequest.getParameter("startDate");
if (startDate == null) {
    startDate = CalendarUtil.firstDayOfMonth(today);
}

// Get endDate
String endDate = renderRequest.getParameter("endDate");
if (endDate == null) {
    endDate = CalendarUtil.lastDayOfMonth(today);
}

List<CalendarResource> searchableResources = CalendarResourceUtil.getSearchableCalendarResources(themeDisplay.getCompanyId());
String[] selectedResources = renderRequest.getParameterValues("resources");

%>

<liferay-ui:search-toggle
	buttonLabel="search"
	displayTerms="<%= displayTerms %>"
	id="toggle_id_calendar_events_lists_search"
>
	<aui:fieldset>

        <!-- Start Date -->
        <label><b>Start date</b></label>
        <div class="aui-datepicker aui-helper-clearfix" id="startDatePicker">
            <input type="text" name="<%= searchTerms.START_DATE %>" id="<%= searchTerms.START_DATE %>" 
                size="30" />
        </div>

        <!-- End Date -->
        <label><b>End date</b></label>
        <div class="aui-datepicker aui-helper-clearfix" id="endDatePicker">
            <input type="text" name="<%= searchTerms.END_DATE %>" id="<%= searchTerms.END_DATE%>" 
                size="30" />
        </div>

        <!-- CalendarResources -->
        <aui:select label="Calendar Resource" id="resources" name="<%= searchTerms.RESOURCES %>" multiple="true" style="width: 400px;">
            <% for (CalendarResource each : searchableResources) { %>
                <aui:option value="<%= each.getCalendarResourceId() %>"><%= each.getName(locale) %></aui:option>
            <% } %>
        </aui:select>


        <aui:script>

            AUI().use('aui-datepicker', function(A) {
               var simpleDatepicker1 = new A.DatePicker({
                 trigger: '#<%= searchTerms.START_DATE %>',
               }).render('#startDatePicker');
               A.one('#<%= searchTerms.START_DATE %>').val("<%= startDate %>");

               var simpleDatepicker1 = new A.DatePicker({
                trigger: '#<%= searchTerms.END_DATE %>',
               }).render('#endDatePicker');
               A.one('#<%= searchTerms.END_DATE %>').val("<%= endDate %>");
            });

            AUI().ready(function() {
                var resources, options, option, i;
                var selectedResources = <%= toJSONArray(selectedResources) %>;

                resources = document.getElementById('<portlet:namespace />resources');
                options = resources.options;
                for (i = 0; i < options.length; i++) {
                    var option = options[i];
                    if (include(selectedResources, option.value)) {
                        option.selected = true;
                    }
                }
            });

            function include(arr, value) {
                var i = 0;
                while (i++ < arr.length) {
                    if (arr[i] == value) return true;
                }
                return false;
            }

        </aui:script>

	</aui:fieldset>

<style type="text/css">
.toggle_id_calendar_events_lists_searchtoggle-link {
    display: none;
}
</style>

</liferay-ui:search-toggle>
