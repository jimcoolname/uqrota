TimetableDays = [ "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ];
LongTimetableDays = [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];

function DayNumberOf(day) {
	var tti = TimetableDays.indexOf(day);
	if (tti > -1) {
		return tti;
	} else {
		return LongTimetableDays.indexOf(day);
	}
}