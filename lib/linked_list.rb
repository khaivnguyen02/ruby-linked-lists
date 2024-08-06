class Node 
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # Adds a new node containing value to the end of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = Node.new(value)    
    end
  end

  def prepend(value)
    # Adds a new node containing value to the start of the list
    @head = Node.new(value, @head)
  end

  def size
    # Returns the total number of nodes in the list
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def head
    # Returns the first node in the list
    @head
  end

  def tail
    # Returns the last node in the list
    return nil if @head.nil?
    current = @head
    current = current.next_node while current.next_node
    current
  end

  def at(index)
    # TODO: Returns the node at the given index
    return nil if index < 0
    current = @head
    index.times do
      return nil if current.nil?
      current = current.next_node
    end
    current
  end
  
  def pop
    # Removes the last element from the list
  end

  def contain?(value)
    # Return true if the passed in value is in the list and false otherwise
    current = @head
    while current
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    # Return the index of the node containing value, or nil if not found
    current = @head
    index = 0
    while current
      return index if current.value == value
      current = current.next_node
      index += 1
    end
    nil
  end

  def to_s
    # Represent LinkedList object as string
    # Format: ( value ) -> ( value ) -> ( value ) -> nil
    return "nil" if @head.nil?
    result = ""
    current = @head
    while current
      result += "( #{current.value} ) -> "
      current = current.next_node
    end
    result + "nil"
  end

  def insert_at(value, index)
    # TODO: Inserts a new node with the provided value at the given index
  end

  def remove_at(index)
    # TODO: Removes the node at the given index
  end
end