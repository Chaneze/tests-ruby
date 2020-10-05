def time_string(time)
	hour = 0
	minute = 0
	second = 0
	if time >= 3600
		hour = time / 3600
		time = time - hour * 3600
	end
	if time >= 60
		minute = time / 60
	end
	second = time - minute * 60
	return "%02d:%02d:%02d" % [hour, minute, second]
end