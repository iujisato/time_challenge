require './lib/challenge_time'
require 'test/unit'

class TestChallengeTime < Test::Unit::TestCase
  test "returns correct values for 5:00" do
    time = ChallengeTime.new(5, 0)

    assert_equal("five o' clock", time.word_parser)
  end

  test "returns correct values for 5:01" do
    time = ChallengeTime.new(5, 1)

    assert_equal("one minute past five", time.word_parser)
  end

  test "returns correct values for 5:10" do
    time = ChallengeTime.new(5, 10)

    assert_equal("ten minutes past five", time.word_parser)
  end

  test "returns correct values for 5:15" do
    time = ChallengeTime.new(5, 15)

    assert_equal("quarter past five", time.word_parser)
  end

  test "returns correct values for 5:28" do
    time = ChallengeTime.new(5, 28)

    assert_equal("twenty eight minutes past five" , time.word_parser)
  end

  test "returns correct values for 5:30" do
    time = ChallengeTime.new(5, 30)

    assert_equal("half past five", time.word_parser)
  end

  test "returns correct values for 5:32" do
    time = ChallengeTime.new(5, 32)

    assert_equal("twenty eight minutes to six" , time.word_parser)
  end

  test "returns correct values for 5:40" do
    time = ChallengeTime.new(5, 40)

    assert_equal("twenty minutes to six", time.word_parser)
  end

  test "returns correct values for 5:45" do
    time = ChallengeTime.new(5, 45)

    assert_equal("quarter to six", time.word_parser)
  end

  test "returns correct values for 5:47" do
    time = ChallengeTime.new(5, 47)

    assert_equal("thirteen minutes to six", time.word_parser)
  end


end
