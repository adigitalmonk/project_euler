require 'test/unit'
require_relative '../lib/euler'
include Euler

class TestEuler < Test::Unit::TestCase
    def test_two
        answer_two = Euler.two()
        assert_equal answer_two, "The answer to Euler #2 is ... 4613732"
    end
end
