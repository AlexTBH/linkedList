class LinkedList

    attr_accessor :tail, :head, :total_nodes
    def initialize
        @head = nil
        @tail = nil
        @total_nodes = 0
    end

    def append(value)
        @total_nodes += 1
        x = Node.new(value, nil)
        if @head == nil
            @head = x
            @tail = x
        end
        @tail.next_node = x
        @tail = x

    end

    def prepend(value)
        @total_nodes += 1
        if @head == nil
            x = Node.new(value, nil)
            @head = x
            @tail = x
            return
        end
        x = Node.new(value, @head)
        @head = x
    end

    def size
        puts "Total nodes in this list are: #{@total_nodes}"
    end
    
    def head
        puts "The current Head node is #{@head.value.inspect}"
    end

    def tail
        puts "The current Tail node is #{@tail.value.inspect}"
    end

    def at(input)
        x = 0
        y = @head 
        while @total_nodes > x do
            return y.value if input == x
            y = y.next_node
            x += 1
        end
        puts "No nodes at that input"
    end

    def pop
        x = 1
        y = @head
        while @total_nodes > x do
            if y.next_node == @tail
                y.next_node = nil
                @tail = y
            else
                y = y.next_node
            end
            x += 1
        end
    end
    
    #-----TODO-------
    def contains?(value)

    end
    #-----TODO-------

    def test
        puts @head.inspect
        puts @tail.inspect
    end

end

class Node
    attr_accessor :next_node
    attr_reader :value
    
    def initialize(value=nil, next_node=nil)
        @value = value
        @next_node = next_node
    end

end

my_list = LinkedList.new
my_list.prepend(3)
my_list.append(4)
my_list.test
my_list.append(4)
my_list.append(5)
my_list.append(9)
my_list.append(7)
my_list.size
my_list.head
my_list.tail
puts my_list.at(2)
my_list.pop
my_list.pop
my_list.tail

