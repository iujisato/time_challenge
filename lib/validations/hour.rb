class Validation::Hour < Validation
  def check_value
    hour = Integer(number) rescue nil

    while hour.nil? || !hour.between?(1, 12) do
      puts "Please insert a integer number" if hour.nil?
      puts "Please insert a number between 1 and 12" unless hour.nil?
      hour = Integer(gets) rescue nil
    end

    hour
  end
end
