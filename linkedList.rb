class LinkedList

    attr_accessor :tail, :head
    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        x = Node.new(value, nil)
        if @head == nil
            @head = x
            @tail = x
        end
        @tail.next_node = x
        @tail = x

    end

    def prepend(value)
        if @head == nil
            @head = Node.new(value, nil)
            return
        end
        x = Node.new(value, @head)
        @head = x
    end

    #-----------TODO----------
    def size
    
    end
    #-----------TODO----------
    
    def test
        puts @head.next_node.inspect
        puts @tail.inspect
    end

end

class Node
    attr_accessor :value, :next_node 
    
    def initialize(value=nil, next_node=nil)
        @value = value
        @next_node = next_node
    end

end

my_list = LinkedList.new
my_list.prepend(3)
my_list.prepend(4)
my_list.test
my_list.prepend(7)
