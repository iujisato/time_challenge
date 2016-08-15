class Validation::Minute < Validation
  def check_value
    minute = Integer(number) rescue nil

    while minute.nil? || !minute.between?(0, 60)  do
      puts "Favor inserir um número inteiro" if minute.nil?
      puts "Certifique-se de que o número esteja entre 0 e 60" unless minute.nil?
      minute = Integer(gets) rescue nil
    end

    minute
  end
end
