package com.liferay.calendar.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;

import com.liferay.portal.kernel.json.JSON;
import com.liferay.portal.kernel.util.LocaleUtil;
import com.liferay.portal.kernel.util.LocalizationUtil;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.StringUtil;

/**
 * 
 * @author Diego Pino García <dpino@igalia.com>
 *
 */
public class CalendarEvent {	

	private static final SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy - hh:mm a");
	
	private long userId;
	private String userName;
	private String title;
	private long startDate;
	private long endDate;
	private long calendarResourceId;
	private String calendarResourceName;
	private Set<String> attendants;
	private Set<String> resources;
	
	public CalendarEvent(long userId, String userName, String title, long startDate,
			long endDate, long calendarResourceId, String calendarResourceName,
			Set<String> attendants, Set<String> resources) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
		this.calendarResourceId = calendarResourceId;
		this.calendarResourceName = calendarResourceName;
		this.attendants = attendants;
		this.resources = resources;
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
	
	public String getTitle(Locale locale) {
		String languageId = LocaleUtil.toLanguageId(locale);

		return getTitle(languageId);
	}
	
	private String getTitle(String languageId) {
		return LocalizationUtil.getLocalization(getTitle(), languageId);
	}
	
	@JSON
	public String getTitle() {
		if (title == null) {
			return StringPool.BLANK;
		}
		else {
			return title;
		}
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Set<String> getAttendants() {
		return attendants;
	}

	public void setAttendants(Set<String> attendants) {
		this.attendants = attendants;
	}
	
	public Set<String> getResources() {
		return resources;
	}
	
	public String getCalendar() {
		return calendarResourceName;
	}
	
	public String getStartDateStr() {
		return sdf.format(new Date(startDate));
	}
	
	public String getEndDateStr() {
		return sdf.format(new Date(endDate));		
	}

	public String getResourcesStr() {
		return resources != null ? StringUtil.merge(resources, ",") : ""; 
	}
	
	public String getAttendantsStr() {
		return attendants != null ? StringUtil.merge(attendants, ",") : "";
	}

	@Override
	public String toString() {
		return "CalendarEvent [userId=" + userId + ", userName=" + userName
				+ ", title=" + title
				+ ", startDate=" + startDate + ", endDate=" + endDate
				+ ", calendarResourceId=" + calendarResourceId
				+ ", calendarResourceName=" + calendarResourceName
				+ ", resources=" + resources
				+ ", attendants=" + attendants + "]";
	}	

}
