require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = MeridianParseCsvMark::DomainReview.new(signal: 42, slack: 37, drag: 11, confidence: 65)
    assert_equal 153, MeridianParseCsvMark.domain_review_score(item)
    assert_equal "ship", MeridianParseCsvMark.domain_review_lane(item)
  end
end
