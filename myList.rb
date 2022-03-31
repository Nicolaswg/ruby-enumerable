require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list.to_a
  end

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.any? { |e| e == 3 }
list.filter? {|e| e.even?}

