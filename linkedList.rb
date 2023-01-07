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
        puts "The current Tail node is #{@tail.value.inspect} #{@tail.next_node.inspect}"
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
        x = 0
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
        @total_nodes -= 1
    end
    
    def contains?(value)
        x = 0
        y = @head
        while @total_nodes > x do
            return true if y.value == value
            y = y.next_node
            x += 1
        end
        return false
    end

    def find(value)
        x = 0
        y = @head
        idx_values = []
        while @total_nodes > x do
            idx_values << x if y.value == value
            y = y.next_node
            x += 1
        end
        if idx_values.empty?; nil else idx_values end
    end
    
    
    def to_s
        text = ""
        x = 0
        y = @head
        while @total_nodes > x do
            text += y.value.to_s
            if y.next_node.nil?; text += " -> nil " else text += " -> " end
            y = y.next_node
            x += 1
        end
        return text
    end

    def insert_at(value, index)
        if index > @total_nodes
            puts "index too big for this list"
            return
        end

        @total_nodes += 1
        x = 0
        y = @head
        while @total_nodes > x do
            if index == 0 && @head == nil
                return @head = Node.new(value)
            elsif index == 0
                return @head = Node.new(value, @head)
            elsif x + 1 == index
                y.next_node = Node.new(value, y.next_node)
                    if (index + 1) == @total_nodes
                        x = Node.new(value, nil)
                        @tail.next_node = x
                        @tail = x
                    end
                return
            else
                y = y.next_node
                x += 1         
            end
        end
    end

    #-----TODO------
    def remove_at(index)
        
    end
    #-----TODO------

    def remove_at(index)
        if index > @total_nodes
            puts "no nodes at choosen index"
            return
        end

        x = 0
        y = @head
        while @total_nodes > x do
        end
    end

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
my_list.append(4)
my_list.append(9)
my_list.append(4)
my_list.append(3)
my_list.append(6)
my_list.append(7)
my_list.size
my_list.at(2)
my_list.tail
my_list.head
my_list.contains?(9)
puts my_list.find(3)
my_list.append(5)
my_list.append(6)
my_list.append(7)
my_list.pop
my_list.tail
my_list.insert_at(2, 9)
my_list.insert_at(3, 11)
my_list.size
puts my_list.to_s
my_list.tail
my_list.append(2)
puts my_list.to_s
