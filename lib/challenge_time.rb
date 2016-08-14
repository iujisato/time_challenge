require 'pry'

class ChallengeTime
	attr_reader :hours, :minutes

	def initialize(hours=nil, minutes=nil)
		@hours = hours
		@minutes = minutes
	end

	def word_parser
		puts "#{hours}:#{minutes}"
	end
end