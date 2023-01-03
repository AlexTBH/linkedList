class LinkedList

    def append(value)
        @next_node = Node.new(value, nil)
    end

    def prepend(value)
        
    end

end


class Node
    attr_accessor :value, :node 
    
    def initialize(value=nil, next_node=nil)
        @value = value
        @next_node = next_node
    end

end

my_list = LinkedList.new
my_list.append(3)
