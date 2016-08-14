require './lib/challenge_time'


puts "Escreva as horas"
hours = Integer(gets) rescue nil

while hours.nil? || !hours.between?(1, 12)  do
	puts "Valor inválido"
	puts "Certifique-se de que o número seja inteiro e esteja entre 1 e 12"
  hours = Integer(gets) rescue nil
end

puts "Escreva os minutos"
minutes = Integer(gets) rescue nil

while minutes.nil? || !minutes.between?(0, 60)  do
	puts "Valor inválido"
	puts "Certifique-se de que o número seja inteiro e esteja entre 0 e 60"
  minutes = Integer(gets) rescue nil
end

time = ChallengeTime.new(hours, minutes)
time.word_parser
