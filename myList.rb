class MyList
	def initialize (*list)
		@list = list.to_a
	end

	def each
		yield @list
	end
end

list = MyList.new(1,2,3,4)

list.print_list