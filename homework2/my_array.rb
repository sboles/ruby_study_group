#!/usr/bin/env ruby

class MyArray
  def initialize(a)
    @a = a
  end

  def each(&block)
    for e in @a
      block.call(e)
    end
  end

  def map
    result = []
    for e in @a
      result.push yield(e)
    end
    MyArray.new(result)
  end

  def to_s
    return @a.to_s
  end

end


