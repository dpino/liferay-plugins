package com.liferay.calendar.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
	private List<String> attendants;
	
	public CalendarEvent(long userId, String userName, long startDate,
			long endDate, long calendarResourceId, String calendarResourceName,
			List<String> attendants) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.title = title;
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

	public List<String> getAttendants() {
		return attendants;
	}

	public void setAttendants(List<String> attendants) {
		this.attendants = attendants;
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
	
	public String getAttendantsStr() {
		return StringUtil.merge(attendants, ",");
	}

	@Override
	public String toString() {
		return "CalendarEvent [userId=" + userId + ", userName=" + userName
				+ ", title=" + title
				+ ", startDate=" + startDate + ", endDate=" + endDate
				+ ", calendarResourceId=" + calendarResourceId
				+ ", calendarResourceName=" + calendarResourceName
				+ ", attendants=" + attendants + "]";
	}	

}
