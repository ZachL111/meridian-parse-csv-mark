require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = MeridianParseCsvMark::Signal.new(demand: 55, capacity: 99, latency: 11, risk: 23, weight: 5)
    assert_equal 29, MeridianParseCsvMark.score(signal_case_1)
    assert_equal 'review', MeridianParseCsvMark.classify(signal_case_1)
    signal_case_2 = MeridianParseCsvMark::Signal.new(demand: 61, capacity: 88, latency: 15, risk: 17, weight: 7)
    assert_equal 66, MeridianParseCsvMark.score(signal_case_2)
    assert_equal 'review', MeridianParseCsvMark.classify(signal_case_2)
    signal_case_3 = MeridianParseCsvMark::Signal.new(demand: 86, capacity: 74, latency: 17, risk: 19, weight: 7)
    assert_equal 80, MeridianParseCsvMark.score(signal_case_3)
    assert_equal 'review', MeridianParseCsvMark.classify(signal_case_3)
  end
end
