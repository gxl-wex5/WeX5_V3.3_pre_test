define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");
	require("cordova!nl.x-services.plugins.calendar");
	var Model = function() {
		this.callParent();
		// 通用参数
		this.title = "New Years party";// 标题
		this.location = "The Club";// 地点
		this.notes = "Bring pizza.";// 内容
		this.start = new Date(2015, 9, 16, 10, 40, 0, 0, 0); // 开始日期
		this.end = new Date(2015, 9, 16, 10, 45, 0, 0, 0); // 结束日期
		this.calendarName = "MyCal";// 活动
		this.success = function(message) {
			justep.Util.hint("Success: " + JSON.stringify(message));
		};
		this.error = function(message) {
			justep.Util.hint("Error: " + message);
		};
	};

	Model.prototype.creNotificationClick = function(event) {
		var cal = window.plugins.calendar;
		cal.createEvent(this.title, this.location, this.notes, this.start, this.end, this.success, this.error);
	};

	Model.prototype.createEventWithOptionsClick = function(event) {
		var cal = window.plugins.calendar;
		var options = cal.getCalendarOptions(); // 获取默认值
		options.firstReminderMinutes = 180; // default is 60, pass in null for
		options.secondReminderMinutes = 120;
		options.url = "https://www.telerik.com";
		options.calendar = {}
		options.calendar.calendarName = "MyCal"; // iOS only, created for you
		options.calendarId = 1; // Android only, use id obtained from
		options.recurrence = "monthly"; // supported are: daily, weekly,
		options.recurrenceEndDate = new Date(2016, 10, 1, 0, 0, 0, 0, 0); // leave
		options.recurrenceInterval = 2; // once every 2 months in this case,
		cal.createEventWithOptions(this.title, this.location, this.notes, this.start, this.end, options, this.success, this.error);
	};

	Model.prototype.openCalendarClick = function(event) {
		window.plugins.calendar.openCalendar();
	};

	Model.prototype.createEventInteractivelyClick = function(event) {
		var cal = window.plugins.calendar;
		cal.createEventInteractively(this.title, this.location, this.notes, this.start, this.end, this.success, this.error);
	};

	Model.prototype.button4Click = function(event) {
		var cal = window.plugins.calendar;
		var options = cal.getCreateCalendarOptions();
		options.calendarName = this.calendarName;
		options.calendarColor = "#FF0000"; // passing null make iOS pick a color for you
		cal.createCalendar(options, this.success, this.error);
		cal.deleteCalendar(this.calendarName, this.success, this.error);
		cal.createEventInNamedCalendar(this.title, this.location, this.notes, this.start, this.end, this.calendarName, this.success, this.error);
		cal.findAllEventsInNamedCalendar(this.calendarName, this.success, this.error);
	};

	Model.prototype.listEventClick = function(event) {
		var cal = window.plugins.calendar;
		var data = this.comp("calendar");
			data.clear();
		var onSuccess = function(calendars) {
			data.loadData(calendars, true);
		};
		var onError = function() {
			justep.Util.hint("执行操作失败！");
		}
		cal.listCalendars(onSuccess, onError);
	};

	Model.prototype.findEventClick = function(event) {
		var cal = window.plugins.calendar;
		cal.findEvent(this.title, this.location, this.notes, this.start, this.end, this.success, this.error);
	};

	Model.prototype.deleteEventClick = function(event) {
		var cal = window.plugins.calendar;
		cal.deleteEvent(this.title, this.location, this.notes, this.start, this.end, this.success, this.error);
	};
	
	return Model;
});