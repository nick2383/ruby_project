# 09_timer
# Author: Nick Birch

class Timer
	attr_accessor :seconds
	
	def initialize
    	@seconds = 0
  	end

  	def time_string
  		hours = @seconds/3600
  		min = (@seconds - 3600*hours)/60
  		sec = (@seconds - 3600*hours)%60
  		self.padded(hours) + ":" + self.padded(min) + ":" + self.padded(sec)
  	end

  	def padded(num)
  		if num<10
  			'0' + num.to_s
  		else
  			num.to_s
  		end
  	end

  	def seonds=(val)
  		@seconds = val
  	end

	def seconds
		@seconds
	end
end