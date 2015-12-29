class Timer
	attr_accessor :hours, :minutes, :seconds

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	# convert to hh:mm:ss format
	def time_string
		p @hours = @seconds/3600
		p @minutes = (@seconds-@hours*3600)/60
		p @seconds = @seconds%60
		result = "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
	end

	# add zero at the start if time < 10 (hh:mm:ss)
	def padded(time)
		result = ""
		if time >= 10
			result += time.to_s
		else
			result = "0#{time}"
		end
	end
end