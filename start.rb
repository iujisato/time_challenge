require './lib/challenge_time'
require './lib/validation'
require './lib/validations/hour'
require './lib/validations/minute'

puts "Escreva as horas"
hour = Validation::Hour.new(gets)
hour = hour.check_value

puts "Escreva os minutos"
minute = Validation::Minute.new(gets)
minute = minute.check_value

time = ChallengeTime.new(hour, minute)
puts time.word_parser
