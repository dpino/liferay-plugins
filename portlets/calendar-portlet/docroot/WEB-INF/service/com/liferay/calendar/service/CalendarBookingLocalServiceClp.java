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

package com.liferay.calendar.service;

import com.liferay.portal.service.InvokableLocalService;

/**
 * @author Eduardo Lundgren
 */
public class CalendarBookingLocalServiceClp
	implements CalendarBookingLocalService {
	public CalendarBookingLocalServiceClp(
		InvokableLocalService invokableLocalService) {
		_invokableLocalService = invokableLocalService;

		_methodName0 = "addCalendarBooking";

		_methodParameterTypes0 = new String[] {
				"com.liferay.calendar.model.CalendarBooking"
			};

		_methodName1 = "createCalendarBooking";

		_methodParameterTypes1 = new String[] { "long" };

		_methodName2 = "deleteCalendarBooking";

		_methodParameterTypes2 = new String[] { "long" };

		_methodName3 = "deleteCalendarBooking";

		_methodParameterTypes3 = new String[] {
				"com.liferay.calendar.model.CalendarBooking"
			};

		_methodName4 = "dynamicQuery";

		_methodParameterTypes4 = new String[] {  };

		_methodName5 = "dynamicQuery";

		_methodParameterTypes5 = new String[] {
				"com.liferay.portal.kernel.dao.orm.DynamicQuery"
			};

		_methodName6 = "dynamicQuery";

		_methodParameterTypes6 = new String[] {
				"com.liferay.portal.kernel.dao.orm.DynamicQuery", "int", "int"
			};

		_methodName7 = "dynamicQuery";

		_methodParameterTypes7 = new String[] {
				"com.liferay.portal.kernel.dao.orm.DynamicQuery", "int", "int",
				"com.liferay.portal.kernel.util.OrderByComparator"
			};

		_methodName8 = "dynamicQueryCount";

		_methodParameterTypes8 = new String[] {
				"com.liferay.portal.kernel.dao.orm.DynamicQuery"
			};

		_methodName9 = "fetchCalendarBooking";

		_methodParameterTypes9 = new String[] { "long" };

		_methodName10 = "getCalendarBooking";

		_methodParameterTypes10 = new String[] { "long" };

		_methodName11 = "getPersistedModel";

		_methodParameterTypes11 = new String[] { "java.io.Serializable" };

		_methodName12 = "getCalendarBookingByUuidAndGroupId";

		_methodParameterTypes12 = new String[] { "java.lang.String", "long" };

		_methodName13 = "getCalendarBookings";

		_methodParameterTypes13 = new String[] { "int", "int" };

		_methodName14 = "getCalendarBookingsCount";

		_methodParameterTypes14 = new String[] {  };

		_methodName15 = "updateCalendarBooking";

		_methodParameterTypes15 = new String[] {
				"com.liferay.calendar.model.CalendarBooking"
			};

		_methodName16 = "updateCalendarBooking";

		_methodParameterTypes16 = new String[] {
				"com.liferay.calendar.model.CalendarBooking", "boolean"
			};

		_methodName17 = "getBeanIdentifier";

		_methodParameterTypes17 = new String[] {  };

		_methodName18 = "setBeanIdentifier";

		_methodParameterTypes18 = new String[] { "java.lang.String" };

		_methodName20 = "addCalendarBooking";

		_methodParameterTypes20 = new String[] {
				"long", "long", "long[][]", "long", "java.util.Map",
				"java.util.Map", "java.lang.String", "long", "long", "boolean",
				"java.lang.String", "long", "java.lang.String", "long",
				"java.lang.String", "com.liferay.portal.service.ServiceContext"
			};

		_methodName21 = "findCalendarEvents";

		_methodParameterTypes21 = new String[] {
<<<<<<< HEAD
<<<<<<< HEAD
				"long", "java.lang.Long", "java.lang.Long", "long[][]", "int",
				"int", "java.util.Locale"
			};

		_methodName22 = "findCalendarEventsCount";

		_methodParameterTypes22 = new String[] {
				"long", "java.lang.Long", "java.lang.Long", "long[][]",
				"java.util.Locale"
			};

		_methodName23 = "getFoodAndDrinksMap";
<<<<<<< HEAD

		_methodParameterTypes23 = new String[] {  };

		_methodName24 = "getFoodAndDrinksName";

		_methodParameterTypes24 = new String[] { "long" };

		_methodName25 = "checkCalendarBookings";

		_methodParameterTypes25 = new String[] {  };

		_methodName26 = "deleteCalendarBookings";

		_methodParameterTypes26 = new String[] { "long" };

		_methodName27 = "fetchCalendarBooking";

		_methodParameterTypes27 = new String[] { "java.lang.String", "long" };
=======
				"long", "java.lang.Long", "java.lang.Long", "long[][]"
=======
				"long", "java.lang.Long", "java.lang.Long", "long[][]", "int",
				"int", "java.util.Locale"
>>>>>>> fa02886... Do search of CalendarEvents and show results
			};

		_methodName22 = "findCalendarEventsCount";

		_methodParameterTypes22 = new String[] {
				"long", "java.lang.Long", "java.lang.Long", "long[][]",
				"java.util.Locale"
			};

		_methodName23 = "checkCalendarBookings";
=======
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id

		_methodParameterTypes23 = new String[] {  };

		_methodName24 = "getFoodAndDrinksName";

		_methodParameterTypes24 = new String[] { "long" };

		_methodName25 = "checkCalendarBookings";

<<<<<<< HEAD
<<<<<<< HEAD
		_methodParameterTypes25 = new String[] { "long", "long" };
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents

		_methodName28 = "getCalendarBooking";

<<<<<<< HEAD
		_methodParameterTypes28 = new String[] { "long", "long" };

		_methodName29 = "getCalendarBookings";

		_methodParameterTypes29 = new String[] { "long" };

		_methodName30 = "getCalendarBookings";

		_methodParameterTypes30 = new String[] { "long", "long", "long" };
=======
		_methodParameterTypes26 = new String[] { "long" };
=======
		_methodParameterTypes25 = new String[] { "java.lang.String", "long" };
=======
		_methodParameterTypes25 = new String[] {  };
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id

		_methodName26 = "deleteCalendarBookings";

<<<<<<< HEAD
		_methodParameterTypes26 = new String[] { "long", "long" };
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodParameterTypes26 = new String[] { "long" };
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id

		_methodName27 = "fetchCalendarBooking";

		_methodParameterTypes27 = new String[] { "java.lang.String", "long" };

		_methodName28 = "getCalendarBooking";

<<<<<<< HEAD
<<<<<<< HEAD
		_methodParameterTypes28 = new String[] { "long", "long" };
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents

		_methodName31 = "getCalendarBookingsCount";

<<<<<<< HEAD
		_methodParameterTypes31 = new String[] { "long", "long" };

		_methodName32 = "getChildCalendarBookings";

		_methodParameterTypes32 = new String[] { "long" };

		_methodName33 = "getChildCalendarBookings";

		_methodParameterTypes33 = new String[] { "long", "int" };

		_methodName34 = "search";

		_methodParameterTypes34 = new String[] {
=======
		_methodParameterTypes29 = new String[] { "long" };
=======
		_methodParameterTypes28 = new String[] { "long", "long", "long" };
=======
		_methodParameterTypes28 = new String[] { "long", "long" };
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id

		_methodName29 = "getCalendarBookings";

<<<<<<< HEAD
		_methodParameterTypes29 = new String[] { "long", "long" };
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodParameterTypes29 = new String[] { "long" };
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id

		_methodName30 = "getCalendarBookings";

		_methodParameterTypes30 = new String[] { "long", "long", "long" };

		_methodName31 = "getCalendarBookingsCount";

		_methodParameterTypes31 = new String[] { "long", "long" };

		_methodName32 = "getChildCalendarBookings";

<<<<<<< HEAD
<<<<<<< HEAD
		_methodParameterTypes31 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodParameterTypes32 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodParameterTypes32 = new String[] { "long" };

		_methodName33 = "getChildCalendarBookings";

		_methodParameterTypes33 = new String[] { "long", "int" };

		_methodName34 = "search";

		_methodParameterTypes34 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long[][]", "long[][]", "long[][]", "long",
				"java.lang.String", "long", "long", "boolean", "int[][]", "int",
				"int", "com.liferay.portal.kernel.util.OrderByComparator"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName35 = "search";

		_methodParameterTypes35 = new String[] {
=======
		_methodName32 = "search";

		_methodParameterTypes32 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName33 = "search";

		_methodParameterTypes33 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName35 = "search";

		_methodParameterTypes35 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long[][]", "long[][]", "long[][]", "long",
				"java.lang.String", "java.lang.String", "java.lang.String",
				"long", "long", "boolean", "int[][]", "boolean", "int", "int",
				"com.liferay.portal.kernel.util.OrderByComparator"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName36 = "searchCount";

		_methodParameterTypes36 = new String[] {
=======
		_methodName33 = "searchCount";

		_methodParameterTypes33 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName34 = "searchCount";

		_methodParameterTypes34 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName36 = "searchCount";

		_methodParameterTypes36 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long[][]", "long[][]", "long[][]", "long",
				"java.lang.String", "long", "long", "int[][]"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName37 = "searchCount";

		_methodParameterTypes37 = new String[] {
=======
		_methodName34 = "searchCount";

		_methodParameterTypes34 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName35 = "searchCount";

		_methodParameterTypes35 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName37 = "searchCount";

		_methodParameterTypes37 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long[][]", "long[][]", "long[][]", "long",
				"java.lang.String", "java.lang.String", "java.lang.String",
				"long", "long", "int[][]", "boolean"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName38 = "updateCalendarBooking";

		_methodParameterTypes38 = new String[] {
=======
		_methodName35 = "updateCalendarBooking";

		_methodParameterTypes35 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName36 = "updateCalendarBooking";

		_methodParameterTypes36 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName38 = "updateCalendarBooking";

		_methodParameterTypes38 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long", "long", "long[][]", "java.util.Map",
				"java.util.Map", "java.lang.String", "long", "long", "boolean",
				"java.lang.String", "long", "java.lang.String", "long",
				"java.lang.String", "int", "long",
				"com.liferay.portal.service.ServiceContext"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName39 = "updateCalendarBooking";

		_methodParameterTypes39 = new String[] {
=======
		_methodName36 = "updateCalendarBooking";

		_methodParameterTypes36 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName37 = "updateCalendarBooking";

		_methodParameterTypes37 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName39 = "updateCalendarBooking";

		_methodParameterTypes39 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long", "long", "java.util.Map", "java.util.Map",
				"java.lang.String", "long", "long", "boolean",
				"java.lang.String", "long", "java.lang.String", "long",
				"java.lang.String", "int",
				"com.liferay.portal.service.ServiceContext"
			};

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
		_methodName40 = "updateStatus";

		_methodParameterTypes40 = new String[] {
=======
		_methodName37 = "updateStatus";

		_methodParameterTypes37 = new String[] {
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		_methodName38 = "updateStatus";

		_methodParameterTypes38 = new String[] {
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
		_methodName40 = "updateStatus";

		_methodParameterTypes40 = new String[] {
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
				"long", "long", "int",
				"com.liferay.portal.service.ServiceContext"
			};
	}

	public com.liferay.calendar.model.CalendarBooking addCalendarBooking(
		com.liferay.calendar.model.CalendarBooking calendarBooking)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName0,
					_methodParameterTypes0,
					new Object[] { ClpSerializer.translateInput(calendarBooking) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking createCalendarBooking(
		long calendarBookingId) {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName1,
					_methodParameterTypes1, new Object[] { calendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking deleteCalendarBooking(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName2,
					_methodParameterTypes2, new Object[] { calendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking deleteCalendarBooking(
		com.liferay.calendar.model.CalendarBooking calendarBooking)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName3,
					_methodParameterTypes3,
					new Object[] { ClpSerializer.translateInput(calendarBooking) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName4,
					_methodParameterTypes4, new Object[] {  });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.portal.kernel.dao.orm.DynamicQuery)ClpSerializer.translateOutput(returnObj);
	}

	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName5,
					_methodParameterTypes5,
					new Object[] { ClpSerializer.translateInput(dynamicQuery) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List)ClpSerializer.translateOutput(returnObj);
	}

	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end) throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName6,
					_methodParameterTypes6,
					new Object[] {
						ClpSerializer.translateInput(dynamicQuery),
						
					start,
						
					end
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List)ClpSerializer.translateOutput(returnObj);
	}

	@SuppressWarnings("rawtypes")
	public java.util.List dynamicQuery(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName7,
					_methodParameterTypes7,
					new Object[] {
						ClpSerializer.translateInput(dynamicQuery),
						
					start,
						
					end,
						
					ClpSerializer.translateInput(orderByComparator)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List)ClpSerializer.translateOutput(returnObj);
	}

	public long dynamicQueryCount(
		com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName8,
					_methodParameterTypes8,
					new Object[] { ClpSerializer.translateInput(dynamicQuery) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Long)returnObj).longValue();
	}

	public com.liferay.calendar.model.CalendarBooking fetchCalendarBooking(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName9,
					_methodParameterTypes9, new Object[] { calendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking getCalendarBooking(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName10,
					_methodParameterTypes10, new Object[] { calendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.portal.model.PersistedModel getPersistedModel(
		java.io.Serializable primaryKeyObj)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName11,
					_methodParameterTypes11,
					new Object[] { ClpSerializer.translateInput(primaryKeyObj) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.portal.model.PersistedModel)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking getCalendarBookingByUuidAndGroupId(
		java.lang.String uuid, long groupId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName12,
					_methodParameterTypes12,
					new Object[] { ClpSerializer.translateInput(uuid), groupId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> getCalendarBookings(
		int start, int end)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName13,
					_methodParameterTypes13, new Object[] { start, end });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public int getCalendarBookingsCount()
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName14,
					_methodParameterTypes14, new Object[] {  });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Integer)returnObj).intValue();
	}

	public com.liferay.calendar.model.CalendarBooking updateCalendarBooking(
		com.liferay.calendar.model.CalendarBooking calendarBooking)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName15,
					_methodParameterTypes15,
					new Object[] { ClpSerializer.translateInput(calendarBooking) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking updateCalendarBooking(
		com.liferay.calendar.model.CalendarBooking calendarBooking,
		boolean merge)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName16,
					_methodParameterTypes16,
					new Object[] {
						ClpSerializer.translateInput(calendarBooking),
						
					merge
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public java.lang.String getBeanIdentifier() {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName17,
					_methodParameterTypes17, new Object[] {  });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.lang.String)ClpSerializer.translateOutput(returnObj);
	}

	public void setBeanIdentifier(java.lang.String beanIdentifier) {
		try {
			_invokableLocalService.invokeMethod(_methodName18,
				_methodParameterTypes18,
				new Object[] { ClpSerializer.translateInput(beanIdentifier) });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}
	}

	public java.lang.Object invokeMethod(java.lang.String name,
		java.lang.String[] parameterTypes, java.lang.Object[] arguments)
		throws java.lang.Throwable {
		throw new UnsupportedOperationException();
	}

	public com.liferay.calendar.model.CalendarBooking addCalendarBooking(
		long userId, long calendarId, long[] childCalendarIds,
		long parentCalendarBookingId,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, long startDate, long endDate,
		boolean allDay, java.lang.String recurrence, long firstReminder,
		java.lang.String firstReminderType, long secondReminder,
		java.lang.String secondReminderType,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName20,
					_methodParameterTypes20,
					new Object[] {
						userId,
						
					calendarId,
						
					ClpSerializer.translateInput(childCalendarIds),
						
					parentCalendarBookingId,
						
					ClpSerializer.translateInput(titleMap),
						
					ClpSerializer.translateInput(descriptionMap),
						
					ClpSerializer.translateInput(location),
						
					startDate,
						
					endDate,
						
					allDay,
						
					ClpSerializer.translateInput(recurrence),
						
					firstReminder,
						
					ClpSerializer.translateInput(firstReminderType),
						
					secondReminder,
						
					ClpSerializer.translateInput(secondReminderType),
						
					ClpSerializer.translateInput(serviceContext)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarEvent> findCalendarEvents(
		long userId, java.lang.Long startDate, java.lang.Long endDate,
<<<<<<< HEAD
<<<<<<< HEAD
		long[] calendarResourceIds, int start, int end, java.util.Locale locale)
=======
		long[] calendarResourceIds)
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
		long[] calendarResourceIds, int start, int end, java.util.Locale locale)
>>>>>>> fa02886... Do search of CalendarEvents and show results
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName21,
					_methodParameterTypes21,
					new Object[] {
						userId,
						
					ClpSerializer.translateInput(startDate),
						
					ClpSerializer.translateInput(endDate),
						
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> fa02886... Do search of CalendarEvents and show results
					ClpSerializer.translateInput(calendarResourceIds),
						
					start,
						
					end,
						
					ClpSerializer.translateInput(locale)
<<<<<<< HEAD
=======
					ClpSerializer.translateInput(calendarResourceIds)
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
>>>>>>> fa02886... Do search of CalendarEvents and show results
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarEvent>)ClpSerializer.translateOutput(returnObj);
	}

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> fa02886... Do search of CalendarEvents and show results
	public int findCalendarEventsCount(long userId, java.lang.Long startDate,
		java.lang.Long endDate, long[] calendarResourceIds,
		java.util.Locale locale)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName22,
					_methodParameterTypes22,
					new Object[] {
						userId,
						
					ClpSerializer.translateInput(startDate),
						
					ClpSerializer.translateInput(endDate),
						
					ClpSerializer.translateInput(calendarResourceIds),
						
					ClpSerializer.translateInput(locale)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Integer)returnObj).intValue();
	}

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
	public java.util.Map<java.lang.Long, java.lang.String> getFoodAndDrinksMap()
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName23,
					_methodParameterTypes23, new Object[] {  });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.Map<java.lang.Long, java.lang.String>)ClpSerializer.translateOutput(returnObj);
	}

	public java.lang.String getFoodAndDrinksName(long id)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
			returnObj = _invokableLocalService.invokeMethod(_methodName24,
					_methodParameterTypes24, new Object[] { id });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.lang.String)ClpSerializer.translateOutput(returnObj);
	}

<<<<<<< HEAD
=======
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
	public void checkCalendarBookings()
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			_invokableLocalService.invokeMethod(_methodName25,
				_methodParameterTypes25, new Object[] {  });
=======
			_invokableLocalService.invokeMethod(_methodName22,
				_methodParameterTypes22, new Object[] {  });
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			_invokableLocalService.invokeMethod(_methodName23,
				_methodParameterTypes23, new Object[] {  });
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			_invokableLocalService.invokeMethod(_methodName25,
				_methodParameterTypes25, new Object[] {  });
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}
	}

	public void deleteCalendarBookings(long calendarId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			_invokableLocalService.invokeMethod(_methodName26,
				_methodParameterTypes26, new Object[] { calendarId });
=======
			_invokableLocalService.invokeMethod(_methodName23,
				_methodParameterTypes23, new Object[] { calendarId });
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			_invokableLocalService.invokeMethod(_methodName24,
				_methodParameterTypes24, new Object[] { calendarId });
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			_invokableLocalService.invokeMethod(_methodName26,
				_methodParameterTypes26, new Object[] { calendarId });
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}
	}

	public com.liferay.calendar.model.CalendarBooking fetchCalendarBooking(
		java.lang.String uuid, long groupId)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName27,
					_methodParameterTypes27,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName24,
					_methodParameterTypes24,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName25,
					_methodParameterTypes25,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName27,
					_methodParameterTypes27,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] { ClpSerializer.translateInput(uuid), groupId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking getCalendarBooking(
		long calendarId, long parentCalendarBookingId)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName28,
					_methodParameterTypes28,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName25,
					_methodParameterTypes25,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName26,
					_methodParameterTypes26,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName28,
					_methodParameterTypes28,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] { calendarId, parentCalendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> getCalendarBookings(
		long calendarId)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName29,
					_methodParameterTypes29, new Object[] { calendarId });
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName26,
					_methodParameterTypes26, new Object[] { calendarId });
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName27,
					_methodParameterTypes27, new Object[] { calendarId });
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName29,
					_methodParameterTypes29, new Object[] { calendarId });
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> getCalendarBookings(
		long calendarId, long startDate, long endDate)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName30,
					_methodParameterTypes30,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName27,
					_methodParameterTypes27,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName28,
					_methodParameterTypes28,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName30,
					_methodParameterTypes30,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] { calendarId, startDate, endDate });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public int getCalendarBookingsCount(long calendarId,
		long parentCalendarBookingId)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName31,
					_methodParameterTypes31,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName28,
					_methodParameterTypes28,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName29,
					_methodParameterTypes29,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName31,
					_methodParameterTypes31,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] { calendarId, parentCalendarBookingId });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Integer)returnObj).intValue();
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> getChildCalendarBookings(
		long calendarBookingId)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName32,
					_methodParameterTypes32, new Object[] { calendarBookingId });
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName29,
					_methodParameterTypes29, new Object[] { calendarBookingId });
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName30,
					_methodParameterTypes30, new Object[] { calendarBookingId });
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName32,
					_methodParameterTypes32, new Object[] { calendarBookingId });
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> getChildCalendarBookings(
		long parentCalendarBookingId, int status)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName33,
					_methodParameterTypes33,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName30,
					_methodParameterTypes30,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName31,
					_methodParameterTypes31,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName33,
					_methodParameterTypes33,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] { parentCalendarBookingId, status });
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> search(
		long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String keywords, long startDate, long endDate,
		boolean recurring, int[] statuses, int start, int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName34,
					_methodParameterTypes34,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName31,
					_methodParameterTypes31,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName32,
					_methodParameterTypes32,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName34,
					_methodParameterTypes34,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						companyId,
						
					ClpSerializer.translateInput(groupIds),
						
					ClpSerializer.translateInput(calendarIds),
						
					ClpSerializer.translateInput(calendarResourceIds),
						
					parentCalendarBookingId,
						
					ClpSerializer.translateInput(keywords),
						
					startDate,
						
					endDate,
						
					recurring,
						
					ClpSerializer.translateInput(statuses),
						
					start,
						
					end,
						
					ClpSerializer.translateInput(orderByComparator)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public java.util.List<com.liferay.calendar.model.CalendarBooking> search(
		long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String title, java.lang.String description,
		java.lang.String location, long startDate, long endDate,
		boolean recurring, int[] statuses, boolean andOperator, int start,
		int end,
		com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName35,
					_methodParameterTypes35,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName32,
					_methodParameterTypes32,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName33,
					_methodParameterTypes33,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName35,
					_methodParameterTypes35,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						companyId,
						
					ClpSerializer.translateInput(groupIds),
						
					ClpSerializer.translateInput(calendarIds),
						
					ClpSerializer.translateInput(calendarResourceIds),
						
					parentCalendarBookingId,
						
					ClpSerializer.translateInput(title),
						
					ClpSerializer.translateInput(description),
						
					ClpSerializer.translateInput(location),
						
					startDate,
						
					endDate,
						
					recurring,
						
					ClpSerializer.translateInput(statuses),
						
					andOperator,
						
					start,
						
					end,
						
					ClpSerializer.translateInput(orderByComparator)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (java.util.List<com.liferay.calendar.model.CalendarBooking>)ClpSerializer.translateOutput(returnObj);
	}

	public int searchCount(long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String keywords, long startDate, long endDate, int[] statuses)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName36,
					_methodParameterTypes36,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName33,
					_methodParameterTypes33,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName34,
					_methodParameterTypes34,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName36,
					_methodParameterTypes36,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						companyId,
						
					ClpSerializer.translateInput(groupIds),
						
					ClpSerializer.translateInput(calendarIds),
						
					ClpSerializer.translateInput(calendarResourceIds),
						
					parentCalendarBookingId,
						
					ClpSerializer.translateInput(keywords),
						
					startDate,
						
					endDate,
						
					ClpSerializer.translateInput(statuses)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Integer)returnObj).intValue();
	}

	public int searchCount(long companyId, long[] groupIds, long[] calendarIds,
		long[] calendarResourceIds, long parentCalendarBookingId,
		java.lang.String title, java.lang.String description,
		java.lang.String location, long startDate, long endDate,
		int[] statuses, boolean andOperator)
		throws com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName37,
					_methodParameterTypes37,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName34,
					_methodParameterTypes34,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName35,
					_methodParameterTypes35,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName37,
					_methodParameterTypes37,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						companyId,
						
					ClpSerializer.translateInput(groupIds),
						
					ClpSerializer.translateInput(calendarIds),
						
					ClpSerializer.translateInput(calendarResourceIds),
						
					parentCalendarBookingId,
						
					ClpSerializer.translateInput(title),
						
					ClpSerializer.translateInput(description),
						
					ClpSerializer.translateInput(location),
						
					startDate,
						
					endDate,
						
					ClpSerializer.translateInput(statuses),
						
					andOperator
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return ((Integer)returnObj).intValue();
	}

	public com.liferay.calendar.model.CalendarBooking updateCalendarBooking(
		long userId, long calendarBookingId, long calendarId,
		long[] childCalendarIds,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, long startDate, long endDate,
		boolean allDay, java.lang.String recurrence, long firstReminder,
		java.lang.String firstReminderType, long secondReminder,
		java.lang.String secondReminderType, int status, long foodAndDrinksId,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName38,
					_methodParameterTypes38,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName35,
					_methodParameterTypes35,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName36,
					_methodParameterTypes36,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName38,
					_methodParameterTypes38,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						userId,
						
					calendarBookingId,
						
					calendarId,
						
					ClpSerializer.translateInput(childCalendarIds),
						
					ClpSerializer.translateInput(titleMap),
						
					ClpSerializer.translateInput(descriptionMap),
						
					ClpSerializer.translateInput(location),
						
					startDate,
						
					endDate,
						
					allDay,
						
					ClpSerializer.translateInput(recurrence),
						
					firstReminder,
						
					ClpSerializer.translateInput(firstReminderType),
						
					secondReminder,
						
					ClpSerializer.translateInput(secondReminderType),
						
					status,
						
					foodAndDrinksId,
						
					ClpSerializer.translateInput(serviceContext)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking updateCalendarBooking(
		long userId, long calendarBookingId, long calendarId,
		java.util.Map<java.util.Locale, java.lang.String> titleMap,
		java.util.Map<java.util.Locale, java.lang.String> descriptionMap,
		java.lang.String location, long startDate, long endDate,
		boolean allDay, java.lang.String recurrence, long firstReminder,
		java.lang.String firstReminderType, long secondReminder,
		java.lang.String secondReminderType, int status,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName39,
					_methodParameterTypes39,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName36,
					_methodParameterTypes36,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName37,
					_methodParameterTypes37,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName39,
					_methodParameterTypes39,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						userId,
						
					calendarBookingId,
						
					calendarId,
						
					ClpSerializer.translateInput(titleMap),
						
					ClpSerializer.translateInput(descriptionMap),
						
					ClpSerializer.translateInput(location),
						
					startDate,
						
					endDate,
						
					allDay,
						
					ClpSerializer.translateInput(recurrence),
						
					firstReminder,
						
					ClpSerializer.translateInput(firstReminderType),
						
					secondReminder,
						
					ClpSerializer.translateInput(secondReminderType),
						
					status,
						
					ClpSerializer.translateInput(serviceContext)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	public com.liferay.calendar.model.CalendarBooking updateStatus(
		long userId, long calendarBookingId, int status,
		com.liferay.portal.service.ServiceContext serviceContext)
		throws com.liferay.portal.kernel.exception.PortalException,
			com.liferay.portal.kernel.exception.SystemException {
		Object returnObj = null;

		try {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			returnObj = _invokableLocalService.invokeMethod(_methodName40,
					_methodParameterTypes40,
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName37,
					_methodParameterTypes37,
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName38,
					_methodParameterTypes38,
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
			returnObj = _invokableLocalService.invokeMethod(_methodName40,
					_methodParameterTypes40,
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
					new Object[] {
						userId,
						
					calendarBookingId,
						
					status,
						
					ClpSerializer.translateInput(serviceContext)
					});
		}
		catch (Throwable t) {
			t = ClpSerializer.translateThrowable(t);

			if (t instanceof com.liferay.portal.kernel.exception.PortalException) {
				throw (com.liferay.portal.kernel.exception.PortalException)t;
			}

			if (t instanceof com.liferay.portal.kernel.exception.SystemException) {
				throw (com.liferay.portal.kernel.exception.SystemException)t;
			}

			if (t instanceof RuntimeException) {
				throw (RuntimeException)t;
			}
			else {
				throw new RuntimeException(t.getClass().getName() +
					" is not a valid exception");
			}
		}

		return (com.liferay.calendar.model.CalendarBooking)ClpSerializer.translateOutput(returnObj);
	}

	private InvokableLocalService _invokableLocalService;
	private String _methodName0;
	private String[] _methodParameterTypes0;
	private String _methodName1;
	private String[] _methodParameterTypes1;
	private String _methodName2;
	private String[] _methodParameterTypes2;
	private String _methodName3;
	private String[] _methodParameterTypes3;
	private String _methodName4;
	private String[] _methodParameterTypes4;
	private String _methodName5;
	private String[] _methodParameterTypes5;
	private String _methodName6;
	private String[] _methodParameterTypes6;
	private String _methodName7;
	private String[] _methodParameterTypes7;
	private String _methodName8;
	private String[] _methodParameterTypes8;
	private String _methodName9;
	private String[] _methodParameterTypes9;
	private String _methodName10;
	private String[] _methodParameterTypes10;
	private String _methodName11;
	private String[] _methodParameterTypes11;
	private String _methodName12;
	private String[] _methodParameterTypes12;
	private String _methodName13;
	private String[] _methodParameterTypes13;
	private String _methodName14;
	private String[] _methodParameterTypes14;
	private String _methodName15;
	private String[] _methodParameterTypes15;
	private String _methodName16;
	private String[] _methodParameterTypes16;
	private String _methodName17;
	private String[] _methodParameterTypes17;
	private String _methodName18;
	private String[] _methodParameterTypes18;
	private String _methodName20;
	private String[] _methodParameterTypes20;
	private String _methodName21;
	private String[] _methodParameterTypes21;
	private String _methodName22;
	private String[] _methodParameterTypes22;
	private String _methodName23;
	private String[] _methodParameterTypes23;
	private String _methodName24;
	private String[] _methodParameterTypes24;
	private String _methodName25;
	private String[] _methodParameterTypes25;
	private String _methodName26;
	private String[] _methodParameterTypes26;
	private String _methodName27;
	private String[] _methodParameterTypes27;
	private String _methodName28;
	private String[] _methodParameterTypes28;
	private String _methodName29;
	private String[] _methodParameterTypes29;
	private String _methodName30;
	private String[] _methodParameterTypes30;
	private String _methodName31;
	private String[] _methodParameterTypes31;
	private String _methodName32;
	private String[] _methodParameterTypes32;
	private String _methodName33;
	private String[] _methodParameterTypes33;
	private String _methodName34;
	private String[] _methodParameterTypes34;
	private String _methodName35;
	private String[] _methodParameterTypes35;
	private String _methodName36;
	private String[] _methodParameterTypes36;
	private String _methodName37;
	private String[] _methodParameterTypes37;
<<<<<<< HEAD
<<<<<<< HEAD
	private String _methodName38;
	private String[] _methodParameterTypes38;
	private String _methodName39;
	private String[] _methodParameterTypes39;
	private String _methodName40;
	private String[] _methodParameterTypes40;
=======
>>>>>>> 4d22ffb... Add CalendarEvent and method to find CalendarEvents
=======
	private String _methodName38;
	private String[] _methodParameterTypes38;
<<<<<<< HEAD
>>>>>>> fa02886... Do search of CalendarEvents and show results
=======
	private String _methodName39;
	private String[] _methodParameterTypes39;
	private String _methodName40;
	private String[] _methodParameterTypes40;
>>>>>>> b658ece... Added services for retrieving a map of FoodAndDrinks and the name of a FoodAndDrink by Id
}