#!/usr/bin/env ruby

$i_am_global = 'global'

class A

  def a=(a)
    @a = a
  end

  def a
    @a
  end

end

class B < A

  attr_accessor :b

end

class C < B

  attr_reader :c

  def initialize(c)
    @c = c
  end

  def foo(c)
    @c = c
  end

end

class Name 

  include Enumerable 
  attr_accessor :first, :last

  def initialize(f,l)
    @first = f
    @last = l
  end

  def <=> (n) 
    return @last <=> n.last unless @last.eql? n.last
    @first <=> n.first
  end

end
