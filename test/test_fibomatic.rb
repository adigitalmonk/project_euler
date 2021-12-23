require 'test/unit'
require_relative '../lib/fibomatic'

class TestFibomatic < Test::Unit::TestCase
    def test_init
        fibo = Fibomatic.new(1, 2, 20)
        assert_equal fibo.items, [1, 2, 3, 5, 8, 13]
    end

    def test_filter
        fibo = Fibomatic.new(1, 2, 20)
        fibo.filter() { |item| item > 5 }
        assert_equal fibo.items, [8, 13]
    end

    def test_enumerable_features
        fibo = Fibomatic.new(1, 2, 4_000_000)
        fibo.filter { |item| item % 2 == 0 }
        assert_equal fibo.sum(), 4613732
    end
end
