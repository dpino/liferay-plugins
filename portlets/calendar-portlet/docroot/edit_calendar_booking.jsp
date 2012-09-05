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

List<CalendarBooking> acceptedCalendars = new ArrayList<CalendarBooking>();
List<CalendarBooking> declinedCalendars = new ArrayList<CalendarBooking>();
List<CalendarBooking> maybeCalendars = new ArrayList<CalendarBooking>();
List<CalendarBooking> pendingCalendars = new ArrayList<CalendarBooking>();

public boolean isSelected(Calendar calendar) {
    long calendarId = calendar.getCalendarId();
    return (inCalendar(calendarId, acceptedCalendars) ||
        inCalendar(calendarId, declinedCalendars) ||
        inCalendar(calendarId, maybeCalendars));
}

public boolean inCalendar(long calendarId, List<CalendarBooking> calendars) {
    for (CalendarBooking each: calendars) {
        if (each.getCalendarId() == calendarId) {
            return true;
        }
    }
    return false;
}

%>

<%
String redirect = ParamUtil.getString(request, "redirect");

String activeView = ParamUtil.getString(request, "activeView", defaultView);

redirect = HttpUtil.setParameter(redirect, renderResponse.getNamespace() + "activeView", activeView);

long currentDate = ParamUtil.getLong(request, "currentDate", now.getTimeInMillis());

redirect = HttpUtil.setParameter(redirect, renderResponse.getNamespace() + "currentDate", currentDate);

CalendarBooking calendarBooking = (CalendarBooking)request.getAttribute(WebKeys.CALENDAR_BOOKING);

long calendarBookingId = BeanParamUtil.getLong(calendarBooking, request, "calendarBookingId");

long calendarId = BeanParamUtil.getLong(calendarBooking, request, "calendarId", userDefaultCalendar.getCalendarId());
String title = BeanParamUtil.getString(calendarBooking, request, "titleCurrentValue");

long startDate = ParamUtil.getLong(request, "startDate", now.getTimeInMillis());

java.util.Calendar startDateJCalendar = JCalendarUtil.getJCalendar(startDate, userTimeZone);

java.util.Calendar defaultEndDateJCalendar = (java.util.Calendar)now.clone();

defaultEndDateJCalendar.add(java.util.Calendar.HOUR, 1);

long endDate = ParamUtil.getLong(request, "endDate", defaultEndDateJCalendar.getTimeInMillis());

java.util.Calendar endDateJCalendar = JCalendarUtil.getJCalendar(endDate, userTimeZone);

boolean allDay = ParamUtil.getBoolean(request, "allDay");

if (!allDay) {
	com.liferay.portal.kernel.util.CalendarUtil.roundByMinutes(startDateJCalendar, 30);
	com.liferay.portal.kernel.util.CalendarUtil.roundByMinutes(endDateJCalendar, 30);
}

long firstReminder = BeanParamUtil.getLong(calendarBooking, request, "firstReminder");
String firstReminderType = BeanParamUtil.getString(calendarBooking, request, "firstReminderType", PortletPropsValues.CALENDAR_NOTIFICATION_DEFAULT_TYPE);
long secondReminder = BeanParamUtil.getLong(calendarBooking, request, "secondReminder");
String secondReminderType = BeanParamUtil.getString(calendarBooking, request, "secondReminderType", PortletPropsValues.CALENDAR_NOTIFICATION_DEFAULT_TYPE);

JSONArray acceptedCalendarsJSONArray = JSONFactoryUtil.createJSONArray();
JSONArray declinedCalendarsJSONArray = JSONFactoryUtil.createJSONArray();
JSONArray maybeCalendarsJSONArray = JSONFactoryUtil.createJSONArray();
JSONArray pendingCalendarsJSONArray = JSONFactoryUtil.createJSONArray();

boolean invitable = true;
boolean recurring = false;
Recurrence recurrence = null;

Calendar calendar = CalendarServiceUtil.fetchCalendar(calendarId);

if (calendarBooking != null) {
	startDateJCalendar.setTimeInMillis(calendarBooking.getStartDate());
	endDateJCalendar.setTimeInMillis(calendarBooking.getEndDate());

    acceptedCalendars = CalendarBookingServiceUtil.getChildCalendarBookings(calendarBooking.getParentCalendarBookingId(), CalendarBookingWorkflowConstants.STATUS_APPROVED);
    declinedCalendars = CalendarBookingServiceUtil.getChildCalendarBookings(calendarBooking.getParentCalendarBookingId(), CalendarBookingWorkflowConstants.STATUS_DENIED);
    maybeCalendars = CalendarBookingServiceUtil.getChildCalendarBookings(calendarBooking.getParentCalendarBookingId(), CalendarBookingWorkflowConstants.STATUS_MAYBE);
    pendingCalendars = CalendarBookingServiceUtil.getChildCalendarBookings(calendarBooking.getParentCalendarBookingId(), CalendarBookingWorkflowConstants.STATUS_PENDING);

	acceptedCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSONArray(themeDisplay, acceptedCalendars); 
	declinedCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSONArray(themeDisplay, declinedCalendars); 
	maybeCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSONArray(themeDisplay, maybeCalendars); 
	pendingCalendarsJSONArray = CalendarUtil.toCalendarBookingsJSONArray(themeDisplay, pendingCalendars);

	if (!calendarBooking.isMasterBooking()) {
		invitable = false;
	}

	if (calendarBooking.isRecurring()) {
		recurring = true;
	}

	recurrence = calendarBooking.getRecurrenceObj();
}
else if (calendar != null) {
	JSONObject calendarJSONObject = CalendarUtil.toCalendarJSONObject(themeDisplay, calendar);

	if (calendar.getUserId() == themeDisplay.getUserId()) {
		acceptedCalendarsJSONArray.put(calendarJSONObject);
	}
	else {
		pendingCalendarsJSONArray.put(calendarJSONObject);
	}
}

List<Calendar> locationCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, null, "%Location%", true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, new CalendarNameComparator(true), ActionKeys.MANAGE_BOOKINGS);
List<Calendar> equipmentCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, null, "%Equipment%", true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, new CalendarNameComparator(true), ActionKeys.MANAGE_BOOKINGS);
List<Calendar> foodAndDrinksCalendars = CalendarServiceUtil.search(themeDisplay.getCompanyId(), null, null, "%Food%", true, QueryUtil.ALL_POS, QueryUtil.ALL_POS, new CalendarNameComparator(true), ActionKeys.MANAGE_BOOKINGS);

// Get Food And Drinks Calendar
long foodAndDrinksCalendarId = 0;
Calendar foodAndDrinkCalendar = foodAndDrinksCalendars.get(0);
foodAndDrinksCalendarId = foodAndDrinkCalendar.getCalendarId();

// Get parenCalendarId
long parentCalendarId = 0;
CalendarBooking parentCalendarBooking = calendarBooking != null ? calendarBooking.getParentCalendarBooking() : null;
if (parentCalendarBooking != null) {
    parentCalendarId = parentCalendarBooking.getCalendarId();
}

%>

<liferay-ui:header
	backURL="<%= redirect %>"
	title='<%= ((calendarBooking != null) && Validator.isNotNull(title)) ? title : "new-calendar-booking" %>'
/>

<liferay-portlet:actionURL name="updateCalendarBooking" var="updateCalendarBookingURL">
	<liferay-portlet:param name="mvcPath" value="/edit_calendar_booking.jsp" />
	<liferay-portlet:param name="redirect" value="<%= redirect %>" />
</liferay-portlet:actionURL>

<aui:form action="<%= updateCalendarBookingURL %>" method="post" name="fm" onSubmit='<%= "event.preventDefault(); " + renderResponse.getNamespace() + "updateCalendarBooking();" %>'>
	<aui:input name="calendarBookingId" type="hidden" value="<%= calendarBookingId %>" />
	<aui:input name="childCalendarIds" type="hidden" />
    <aui:input name="foodAndDrinksCalendarId" type="hidden" value="<%= foodAndDrinksCalendarId %>" />

	<aui:model-context bean="<%= calendarBooking %>" model="<%= CalendarBooking.class %>" />

	<aui:fieldset>
		<aui:input name="title" />

		<div id="<portlet:namespace />startDateContainer">
			<aui:input name="startDate" value="<%= startDateJCalendar %>" />
		</div>

		<div id="<portlet:namespace />endDateContainer">
			<aui:input name="endDate" value="<%= endDateJCalendar %>" />
		</div>

		<aui:input name="allDay" />

		<aui:field-wrapper cssClass="calendar-portlet-recurrence-container" inlineField="<%= true %>" label="">
			<aui:input checked="<%= recurring %>" name="repeat" type="checkbox" />

			<a class="calendar-portlet-recurrence-summary" href="javascript:;" id="<portlet:namespace />summary"></a>
		</aui:field-wrapper>
	</aui:fieldset>

    <% 
        // Disabled widgets if they are child bookings 
        boolean disabled = CalendarBookingUtil.isDisabled(calendarBooking); 
    %>

	<aui:fieldset>
		<liferay-ui:panel-container extended="<%= false %>" id="calendarBookingDetailsPanelContainer" persistState="<%= true %>">
			<liferay-ui:panel collapsible="<%= true %>" extended="<%= false %>" id="calendarBookingDetailsPanel" persistState="<%= true %>" title="details">

				<aui:input type="hidden" name="calendarId" />

                <!-- Location -->
				<aui:select label="location" name="_calendarId" disabled="<%= disabled %>">

					<%
					for (Calendar curCalendar : locationCalendars) {
                        String label = curCalendar.getName(locale);
                        label = label.replaceFirst("Location -", "").trim();

                        if (parentCalendarBooking != null) { %>
			                <aui:option selected="<%= curCalendar.getCalendarId() == parentCalendarId %>" value="<%= curCalendar.getCalendarId() %>"><%= label %></aui:option>
                    <%  
                        } else {
                    %>
			                <aui:option selected="<%= curCalendar.getCalendarId() == calendarId %>" value="<%= curCalendar.getCalendarId() %>"><%= label %></aui:option>
                    <%
                        }
                    }
					%>

				</aui:select>

                <!-- Description -->
				<aui:input name="description" />

                <!-- Equipments -->
                <aui:select label="Equipments" id="equipments" name="equipments" multiple="true" style="width: 300px;"
                    disabled="<%= disabled %>" >
                <% for (Calendar each : equipmentCalendars) { 
                        String label = each.getName(locale);
                        label = label.replaceFirst("Equipment -", "").trim();
                        if (isSelected(each)) { %>

                            <aui:option value="<%= each.getCalendarId() %>" selected="true"><%= label %></aui:option>

                <%      } else { %>

                            <aui:option value="<%= each.getCalendarId() %>"><%= label %></aui:option>

                <%      } %>
                <% } %>
                </aui:select>

                <!-- Food and Drinks -->

                <!-- 
                    _foodAndDrinksId is a mock property to control how to show the value of Food And Drinks. Parent bookings can change the value,
                        child bookings show the Food and Drinks value of their parent
                    foodAndDrinksId stores the real value of the property

                    When a new value is selected in the combobox, the value of foodAndDrinksId is updated via Javascript
                -->
                <% 
                    Map<Long, String> mapFoodAndDrinks = CalendarBookingLocalServiceUtil.getFoodAndDrinksMap(); 
                    long selectedFoodAndDrinksId = parentCalendarBooking != null ? parentCalendarBooking.getFoodAndDrinksId() : 0L;
                %>
    
	            <aui:input name="foodAndDrinksId" type="hidden" value="<%= selectedFoodAndDrinksId %>" />

                <aui:select label="Food And Drinks" name="_foodAndDrinksId" disabled="<%= disabled %>">

					<%
					    for (Long foodAndDrinksId : mapFoodAndDrinks.keySet()) {
                            String label = mapFoodAndDrinks.get(foodAndDrinksId); %>
						   <aui:option selected="<%= foodAndDrinksId == selectedFoodAndDrinksId %>" value="<%= foodAndDrinksId %>"><%= label %></aui:option>
                    <%  } %>

				</aui:select>

			</liferay-ui:panel>

			<liferay-ui:panel collapsible="<%= true %>" extended="<%= false %>" id="calendarBookingReminderPanel" persistState="<%= true %>" title="reminders">
				<div id="<portlet:namespace />reminders"></div>
			</liferay-ui:panel>
		</liferay-ui:panel-container>
	</aui:fieldset>

	<liferay-ui:tabs
		names="invitations"
		refresh="<%= false %>"
	>
		<liferay-ui:section>
			<c:if test="<%= invitable %>">
				<aui:input inputCssClass="calendar-portlet-invite-resources-input" label="invite-resource" name="inviteResource" placeholder="add-guests-groups-rooms" type="text" />

				<div class="separator"><!-- --></div>
			</c:if>

			<aui:layout cssClass="calendar-booking-invitations">
				<aui:column columnWidth="25" first="true">
					<label class="aui-field-label">
						<liferay-ui:message key="pending" /> (<span id="<portlet:namespace />pendingCounter"><%= pendingCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListPending"></div>
				</aui:column>
				<aui:column columnWidth="25">
					<label class="aui-field-label">
						<liferay-ui:message key="accepted" /> (<span id="<portlet:namespace />acceptedCounter"><%= acceptedCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListAccepted"></div>
				</aui:column>
				<aui:column columnWidth="25" last="true">
					<label class="aui-field-label">
						<liferay-ui:message key="maybe" /> (<span id="<portlet:namespace />maybeCounter"><%= maybeCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListMaybe"></div>
				</aui:column>
				<aui:column columnWidth="25" last="true">
					<label class="aui-field-label">
						<liferay-ui:message key="declined" /> (<span id="<portlet:namespace />declinedCounter"><%= declinedCalendarsJSONArray.length() %></span>)
					</label>

					<div class="calendar-portlet-calendar-list" id="<portlet:namespace />calendarListDeclined"></div>
				</aui:column>

				<aui:column columnWidth="100">
					<a class="aui-toggler-header-collapsed calendar-portlet-list-header" href="javascript:;" id="<portlet:namespace />checkAvailability">
						<span class="calendar-portlet-list-arrow"></span>

						<span class="calendar-portlet-list-text"><liferay-ui:message key="resources-availability" /></span>
					</a>

					<div class="calendar-portlet-availability">
						<div class="aui-toggler-content-collapsed" id="<portlet:namespace />schedulerContainer">
							<div id="<portlet:namespace />message"></div>

							<liferay-util:include page="/scheduler.jsp" servletContext="<%= application %>">
								<liferay-util:param name="activeView" value="<%= activeView %>" />
								<liferay-util:param name="currentDate" value="<%= String.valueOf(currentDate) %>" />
								<liferay-util:param name="filterCalendarBookings" value='<%= "window." + renderResponse.getNamespace() + "filterCalendarBookings" %>' />
								<liferay-util:param name="readOnly" value="<%= Boolean.TRUE.toString() %>" />
							</liferay-util:include>
						</div>
					</div>
				</aui:column>
			</aui:layout>
		</liferay-ui:section>
	</liferay-ui:tabs>

	<%@ include file="/calendar_booking_recurrence_container.jspf" %>

	<aui:button-row>
		<aui:button type="submit" />

		<aui:button href="<%= redirect %>" type="cancel" />
	</aui:button-row>
</aui:form>

<aui:script>
	function <portlet:namespace />filterCalendarBookings(calendarBooking) {
		return <%= calendarBookingId %> !== calendarBooking.calendarBookingId;
	}

	Liferay.provide(
		window,
		'<portlet:namespace />updateCalendarBooking',
		function() {
			var A = AUI();

			<c:if test="<%= invitable %>">
				var calendarId = A.one('#<portlet:namespace />calendarId').val();
				var childCalendarIds = A.Object.keys(Liferay.CalendarUtil.availableCalendars);

				A.Array.remove(childCalendarIds, A.Array.indexOf(childCalendarIds, calendarId));

				A.one('#<portlet:namespace />childCalendarIds').val(childCalendarIds.join(','));
			</c:if>

			submitForm(document.<portlet:namespace />fm);
		},
		['aui-base', 'json']
	);

	Liferay.Util.focusFormField(document.<portlet:namespace />fm.<portlet:namespace />title);

	Liferay.Util.toggleBoxes('<portlet:namespace />allDayCheckbox', '<portlet:namespace />endDateContainer', true);

	<c:if test="<%= calendarBooking == null %>">
		document.<portlet:namespace />fm.<portlet:namespace />title_<%= LanguageUtil.getLanguageId(request) %>.value = decodeURIComponent('<%= HtmlUtil.escapeURL(title) %>');
	</c:if>
</aui:script>

<aui:script use="json,liferay-calendar-date-picker-util,liferay-calendar-list,liferay-calendar-recurrence-util,liferay-calendar-reminders,liferay-calendar-simple-menu">
	var defaultCalendarId = <%= calendarId %>;

	var scheduler = window.<portlet:namespace />scheduler;

	var removeCalendarResource = function(calendarList, calendar, menu) {
		calendarList.remove(calendar);

		if (menu) {
			menu.hide();
		}
	}

	var syncCalendarsMap = function() {
		Liferay.CalendarUtil.syncCalendarsMap(
			window.<portlet:namespace />calendarListAccepted,
			window.<portlet:namespace />calendarListDeclined,
			window.<portlet:namespace />calendarListMaybe,
			window.<portlet:namespace />calendarListPending
		);

		A.each(
			Liferay.CalendarUtil.availableCalendars,
			function(item, index, collection) {
				item.set('disabled', true);
			}
		);
	}

	window.<portlet:namespace />toggler = new A.Toggler(
		{
			after: {
				expandedChange: function(event) {
					if (event.newVal) {
						var activeView = scheduler.get('activeView');

						activeView._fillHeight();
					}
				}
			},
			animated: true,
			content: '#<portlet:namespace />schedulerContainer',
			expanded: false,
			header: '#<portlet:namespace />checkAvailability'
		}
	);

	var calendarsMenu = {
		items: [
			{
				caption: '<liferay-ui:message key="check-availability" />',
				fn: function(event) {
					var instance = this;

					A.each(
						Liferay.CalendarUtil.availableCalendars,
						function(item, index, collection) {
							item.set('visible', false);
						}
					);

					var calendarList = instance.get('host');

					calendarList.activeItem.set('visible', true);

					<portlet:namespace />toggler.expand();

					instance.hide();

					return false;
				},
				id: 'check-availability'
			}
			<c:if test="<%= invitable %>">
				,{
					caption: '<liferay-ui:message key="remove" />',
					fn: function(event) {
						var instance = this;

						var calendarList = instance.get('host');

						removeCalendarResource(calendarList, calendarList.activeItem, instance);
					},
					id: 'remove'
				}
			</c:if>
		],
		<c:if test="<%= invitable %>">
			on: {
				visibleChange: function(event) {
					var instance = this;

					if (event.newVal) {
						var calendarList = instance.get('host');
						var calendar = calendarList.activeItem;

						var hiddenItems = [];

						if (calendar.get('calendarId') === defaultCalendarId) {
							hiddenItems.push('remove');
						}

						instance.set('hiddenItems', hiddenItems);
					}
				}
			}
		</c:if>
	}

	window.<portlet:namespace />calendarListPending = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />pendingCounter').html(event.newVal.length);

					syncCalendarsMap();

					scheduler.loadCalendarBookings();
				},
				'scheduler-calendar:visibleChange': syncCalendarsMap
			},
			boundingBox: '#<portlet:namespace />calendarListPending',
			calendars: <%= pendingCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-pending-invites" />'
			}
		}
	).render();

	window.<portlet:namespace />calendarListAccepted = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />acceptedCounter').html(event.newVal.length);

					syncCalendarsMap();

					scheduler.loadCalendarBookings();
				},
				'scheduler-calendar:visibleChange': syncCalendarsMap
			},
			boundingBox: '#<portlet:namespace />calendarListAccepted',
			calendars: <%= acceptedCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-accepted-invites" />'
			}
		}
	).render();

	window.<portlet:namespace />calendarListDeclined = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />declinedCounter').html(event.newVal.length);

					syncCalendarsMap();

					scheduler.loadCalendarBookings();
				},
				'scheduler-calendar:visibleChange': syncCalendarsMap
			},
			boundingBox: '#<portlet:namespace />calendarListDeclined',
			calendars: <%= declinedCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-declined-invites" />'
			}
		}
	).render();

	window.<portlet:namespace />calendarListMaybe = new Liferay.CalendarList(
		{
			after: {
				calendarsChange: function(event) {
					var instance = this;

					A.one('#<portlet:namespace />maybeCounter').html(event.newVal.length);

					syncCalendarsMap();

					scheduler.loadCalendarBookings();
				},
				'scheduler-calendar:visibleChange': syncCalendarsMap
			},
			boundingBox: '#<portlet:namespace />calendarListMaybe',
			calendars: <%= maybeCalendarsJSONArray %>,
			simpleMenu: calendarsMenu,
			strings: {
				emptyMessage: '<liferay-ui:message key="no-outstanding-invites" />'
			}
		}
	).render();

	syncCalendarsMap();

	var formNode = A.one(document.<portlet:namespace />fm);

	window.<portlet:namespace />placeholderSchedulerEvent = new Liferay.SchedulerEvent(
		{
			after: {
				endDateChange: function(event) {
					Liferay.DatePickerUtil.syncUI(formNode, 'endDate', event.newVal);
				},
				startDateChange: function(event) {
					Liferay.DatePickerUtil.syncUI(formNode, 'startDate', event.newVal);
				}
			},
			borderStyle: 'dashed',
			borderWidth: '2px',
			color: '#F8F8F8',
			content: '&nbsp;',
			editingEvent: true,
			endDate: Liferay.CalendarUtil.toUserTimeZone(new Date(<%= endDate %>)),
			on: {
				startDateChange: function(event) {
					event.stopPropagation();
				}
			},
			scheduler: scheduler,
			startDate: Liferay.CalendarUtil.toUserTimeZone(new Date(<%= startDate %>))
		}
	);

	Liferay.DatePickerUtil.linkToSchedulerEvent('#<portlet:namespace />endDateContainer', window.<portlet:namespace />placeholderSchedulerEvent, 'endDate');
	Liferay.DatePickerUtil.linkToSchedulerEvent('#<portlet:namespace />startDateContainer', window.<portlet:namespace />placeholderSchedulerEvent, 'startDate');

	scheduler.on(
		{
			eventsChange: function(event) {
				var instance = this;

				event.newVal.push(window.<portlet:namespace />placeholderSchedulerEvent);
			}
		}
	);

	<c:if test="<%= invitable %>">
		A.one('#<portlet:namespace />calendarId').on(
			'valueChange',
			function(event) {
				var calendarId = parseInt(event.target.val(), 10);

				var calendarJSON = Liferay.CalendarUtil.getCalendarJSONById(<%= CalendarUtil.toCalendarsJSONArray(themeDisplay, locationCalendars) %>, calendarId);

				A.Array.each(
					[<portlet:namespace />calendarListAccepted, <portlet:namespace />calendarListDeclined, <portlet:namespace />calendarListMaybe, <portlet:namespace />calendarListPending],
					function(calendarList) {
						calendarList.remove(calendarList.getCalendar(calendarId));
						calendarList.remove(calendarList.getCalendar(defaultCalendarId));
					}
				);

				<portlet:namespace />calendarListPending.add(calendarJSON);

				defaultCalendarId = calendarId;
			}
		);

		A.one('#<portlet:namespace />equipments').on(
			'click',
			function(event) {
                var equipments, options, option, calendarId;

                equipments = document.getElementById('<portlet:namespace />equipments');
                options = equipments.options;

                // Add or remove equipments depending if they are selected or not
                for (i = 0; i < options.length; i++) {
                    option = options[i]; 
                    calendarId = parseInt(option.value, 10);
                    if (option.selected) {
                        addEquipmentCalendar(calendarId);
                    } else {
                        removeCalendar(calendarId);
                    }
                }
			}
		);


        /**
        * Update real value of calendarId
        */
		A.one('#<portlet:namespace />_calendarId').on(
			'change',
			function(event) {
                var _calendarId, calendarId;

                _calendarId = document.getElementById('<portlet:namespace />_calendarId');
                calendarId = document.getElementById('<portlet:namespace />calendarId');

                calendarId.value = _calendarId.value;
			}
		);


        /**
        * Update real value of foodAndDrinks
        */
		A.one('#<portlet:namespace />_foodAndDrinksId').on(
			'change',
			function(event) {
                var _foodAndDrinksId, foodAndDrinksId, foodAndDrinksCalendarId, calendarId;

                _foodAndDrinksId = document.getElementById('<portlet:namespace />_foodAndDrinksId');
                foodAndDrinksId = document.getElementById('<portlet:namespace />foodAndDrinksId');

                foodAndDrinksId.value = _foodAndDrinksId.value;

                foodAndDrinksCalendarId = document.getElementById('<portlet:namespace />foodAndDrinksCalendarId');
				calendarId = parseInt(foodAndDrinksCalendarId.value, 10);

                // Add CalendarResource
                removeCalendar(calendarId);
                if (foodAndDrinksId.value != 0) { 
                    addFoodAndDrinksCalendar(calendarId);
                }

			}
		);

        function removeCalendar(calendarId) {
            A.Array.each(
                [<portlet:namespace />calendarListPending, <portlet:namespace />calendarListAccepted, <portlet:namespace />calendarListDeclined, <portlet:namespace />calendarListMaybe],
                function(calendarList) {
                    calendarList.remove(calendarList.getCalendar(calendarId));
                }
            );
        }

        function addFoodAndDrinksCalendar(calendarId) {
            var calendarJSON = Liferay.CalendarUtil.getCalendarJSONById(<%= CalendarUtil.toCalendarsJSONArray(themeDisplay, foodAndDrinksCalendars) %>, calendarId);
            <portlet:namespace />calendarListPending.add(calendarJSON);
        }

        function addEquipmentCalendar(calendarId) {
            var calendarJSON = Liferay.CalendarUtil.getCalendarJSONById(<%= CalendarUtil.toCalendarsJSONArray(themeDisplay, equipmentCalendars) %>, calendarId);
            addCalendarToPending(calendarJSON);
        }

        function addCalendarToPending(calendarJSON) {
            var calendarId = calendarJSON.calendarId;
            var canAdd = true;

            // If it's already added, return
            A.Array.each(
                [<portlet:namespace />calendarListPending, <portlet:namespace />calendarListAccepted, <portlet:namespace />calendarListDeclined, <portlet:namespace />calendarListMaybe],
                function(calendarList) {
                    if (calendarList.getCalendar(calendarId) != null) {
                        canAdd = false;
                    }
                }
            );

            if (canAdd) {
                <portlet:namespace />calendarListPending.add(calendarJSON);
            }
        }

		<liferay-portlet:resourceURL copyCurrentRenderParameters="<%= false %>" id="calendarResources" var="calendarResourcesURL"></liferay-portlet:resourceURL>

		var inviteResourcesInput = A.one('#<portlet:namespace />inviteResource');

		Liferay.CalendarUtil.createCalendarsAutoComplete(
			'<%= calendarResourcesURL %>',
			inviteResourcesInput,
			function(event) {
				var calendar = event.result.raw;

				calendar.disabled = true;

				<portlet:namespace />calendarListPending.add(calendar);

				inviteResourcesInput.val('');
			}
		);
	</c:if>

	window.<portlet:namespace />reminders = new Liferay.Reminders(
		{
			portletNamespace: '<portlet:namespace />',
			render: '#<portlet:namespace />reminders',
			values: [
				{
					interval: <%= firstReminder %>,
					type: '<%= HtmlUtil.escape(firstReminderType) %>'
				},
				{
					interval: <%= secondReminder %>,
					type: '<%= HtmlUtil.escape(secondReminderType) %>'
				}
			]
		}
	);
</aui:script>
