#!/usr/bin/env ruby

class MyArray
  def initialize(a)
    @a = a
  end

  def each(&block)
    i=0
    n=@a.length
    while(i<n)
      block.call(@a[i])
      i = i+1
    end
  end

  def map
    i=0
    n=@a.length
    result = []
    while(i<n)
      result[i] = yield(@a[i])
      i = i+1
    end
    MyArray.new(result)
  end

  def to_s
    return @a.to_s
  end

end


