class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
		@minutes = 0
		@hours   = 0
		
	end

	def time_string

		processed_seconds = @seconds % 60
		processed_minutes = @seconds/60

		while processed_minutes > 60
			processed_minutes = processed_minutes - 60
		end

		processed_hours = @seconds/3600


		if processed_seconds < 10
			seconds_string = '0' + processed_seconds.to_s
		else
			seconds_string = processed_seconds.to_s
		end

		if processed_minutes < 10
			minutes_string = '0' + processed_minutes.to_s
		else
			minutes_string = processed_minutes.to_s
		end

		if processed_hours < 10
			hours_string = '0' + processed_hours.to_s
		else
			hours_string = processed_hours.to_s
		end

		hours_string + ':' + minutes_string + ':' + seconds_string
		
	end
end