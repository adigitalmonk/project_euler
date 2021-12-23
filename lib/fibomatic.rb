##
# The Fibomatic is responsible for building iterable lists of fibonacci numbers.

class Fibomatic
    include Enumerable
    attr_accessor :items

    ##
    # Creates an enumerable list of numbers for a given fibonacci sequence, 
    #
    # Using +first+ and +second+ as the initial elements in the sequence
    # The list will not contain elements greater than +limit+

    def initialize(first, second, limit)
        previous, current = first, second
        items = [previous, current]
        step = previous + current
        
        while step <= limit
            items.append(step)
            current, previous = step, current 
            step = previous + current
        end

        @items = items
    end

    ##
    # Iterate over all of the elements in the generated fibonacci sequence
    # 
    # Enables Enumerable functionality 
    def each(&block)
        items.each(&block)
    end
end
