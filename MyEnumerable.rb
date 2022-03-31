module MyEnumerable
  def all?
    each {|e| 
        return false unless yield e 
    } 
    true
  end

  def any?
    print 'Im any?'
  end

  def filter?
    print 'Im filter?'
  end
end
