class Validation::Hour < Validation
  def check_value
    hour = Integer(number) rescue nil

    while hour.nil? || !hour.between?(1, 12) do
      puts "Favor inserir um número inteiro" if hour.nil?
      puts "Certifique-se de que o número esteja entre 1 e 12" unless hour.nil?
      hour = Integer(gets) rescue nil
    end

    hour
  end
end
