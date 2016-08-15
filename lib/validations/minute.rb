class Validation::Minute < Validation
  def check_value
    minute = Integer(number) rescue nil

    while minute.nil? || !minute.between?(0, 59)  do
      puts "Please insert a integer number" if minute.nil?
      puts "Please insert a number between 0 and 59" unless minute.nil?
      minute = Integer(gets) rescue nil
    end

    minute
  end
end
