extends Label

class_name DateTimeLabel

export(String) var format = "%4d-%02d-%02d %02d:%02d:%02d"

func _process(delta):
	var dt = OS.get_datetime()
	text = DateTime2Text(dt,format)

static func DateTime2Text(dt,format = "%4d-%02d-%02d %02d:%02d:%02d"):
	return format%[
		dt.get("year",2000),
		dt.get("month",1),
		dt.get("day",1),
		dt.get("hour",0),
		dt.get("minute",0),
		dt.get("second",0),
	]
