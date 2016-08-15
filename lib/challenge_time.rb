class ChallengeTime
  attr_reader :hour, :minute

  def initialize(hour=nil, minute=nil)
    @hour = hour
    @minute = minute
  end

  def word_parser
    return "#{words_hash(hour)} #{words_hash(minute)}" if minute.zero?
    return "#{pluralize(minute)} past #{words_hash(hour)}" if minute <= 30
    if minute > 30
      new_minute = 60 - minute
      new_hour = hour + 1
      return "#{pluralize(new_minute)} to #{words_hash(new_hour)}"
    end
  end

  private

  def words_hash(key)
    words_hash = {
      0=>"o' clock",
      1=>"one",
      2=>"two",
      3=>"three",
      4=>"four",
      5=>"five",
      6=>"six",
      7=>"seven",
      8=>"eight",
      9=>"nine",
      10=>"ten",
      11=>"eleven",
      12=>"twelve",
      13=>"thirteen",
      14=>"fourteen",
      15=>"quarter",
      16=>"sixteen",
      17=>"seventeen",
      18=>"eighteen",
      19=>"nineteen",
      20=>"twenty",
      21=>"twenty one",
      22=>"twenty two",
      23=>"twenty three",
      24=>"twenty four",
      25=>"twenty five",
      26=>"twenty six",
      27=>"twenty seven",
      28=>"twenty eight",
      29=>"twenty nine",
      30=>"half"
    }

    words_hash[key]
  end

  def pluralize(n)
    text   = "#{words_hash(n)} minute" if n.eql?(1)
    text ||= "#{words_hash(n)}" if n.eql?(15) || n.eql?(30)
    text ||= "#{words_hash(n)} minutes"
  end
end
