class Node 
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    
  end

  def append(value)
    # Adds a new node containing value to the end of the list
  end

  def prepend(value)
    # Adds a new node containing value to the start of the list
  end

  def size
    # Returns the total number of nodes in the list
  end

  def head
    # Returns the first node in the list
  end

  def tail
    # Returns the last node in the list
  end

  def at(index)
    # Returns the node at the given index
  end
  
  def pop
    # Removes the last element from the list
  end

  def contain?(value)
    # Return true if the passed in value is in the list and false otherwise
  end

  def find(value)
    # Return the index of the node containing value, or nil if not found
  end

  def to_s
    # Represent LinkedList object as string
    # Format: ( value ) -> ( value ) -> ( value ) -> nil
  end

  def insert_at(value, index)
    # Inserts a new node with the provided value at the given index
  end

  def remove_at(index)
    # Removes the node at the given index
  end
end