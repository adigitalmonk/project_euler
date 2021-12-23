require_relative '../lib/fibomatic'

##
# This class is reponsible for solving Project Euler problems 
# and generating human-readable strings with the solutions.

module Euler

    ##
    # Solves #2
    # - <https://projecteuler.net/problem=2>

    def two()
        answer =
            Fibomatic.new(1, 2, 4_000_000)
                .filter() { |item| item % 2 == 0}
                .sum()

        "The answer to Euler #2 is ... " + answer.to_s
    end
end
