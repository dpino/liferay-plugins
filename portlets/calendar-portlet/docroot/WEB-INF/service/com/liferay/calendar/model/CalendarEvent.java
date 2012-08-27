package com.liferay.calendar.model;

import java.util.List;

/**
 * 
 * @author Diego Pino García <dpino@igalia.com>
 *
 */
public class CalendarEvent {

	private long userId;
	private String userName;
	private long startDate;
	private long endDate;
	private long calendarResourceId;
	private String calendarResourceName;
	private List<String> attendants;
	
	public CalendarEvent(long userId, String userName, long startDate,
			long endDate, long calendarResourceId, String calendarResourceName,
			List<String> attendants) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.calendarResourceId = calendarResourceId;
		this.calendarResourceName = calendarResourceName;
		this.attendants = attendants;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public long getStartDate() {
		return startDate;
	}

	public void setStartDate(long startDate) {
		this.startDate = startDate;
	}

	public long getEndDate() {
		return endDate;
	}

	public void setEndDate(long endDate) {
		this.endDate = endDate;
	}

	public long getCalendarResourceId() {
		return calendarResourceId;
	}

	public void setCalendarResourceId(long calendarResourceId) {
		this.calendarResourceId = calendarResourceId;
	}

	public String getCalendarResourceName() {
		return calendarResourceName;
	}

	public void setCalendarResourceName(String calendarResourceName) {
		this.calendarResourceName = calendarResourceName;
	}

	public List<String> getAttendants() {
		return attendants;
	}

	public void setAttendants(List<String> attendants) {
		this.attendants = attendants;
	}

	@Override
	public String toString() {
		return "CalendarEvent [userId=" + userId + ", userName=" + userName
				+ ", startDate=" + startDate + ", endDate=" + endDate
				+ ", calendarResourceId=" + calendarResourceId
				+ ", calendarResourceName=" + calendarResourceName
				+ ", attendants=" + attendants + "]";
	}

}
