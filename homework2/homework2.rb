#!/usr/bin/env ruby

$LOAD_PATH << '.'
require 'my_array.rb'

a = MyArray.new([1,2,3])
a.each do |item|
  puts item
end

p = lambda {|item| puts item}
MyArray.new([:s, 5, 3.2]).each &p

puts MyArray.new([1,2,3]).map {|item| item = item + 1}

GREETER = 'Hello'

def hello(first = "Steven", *rest) 
  puts "#{GREETER} #{first}"
  rest.each do |person|
    puts "#{GREETER} #{person}"
  end
end

def shout(s)
  s.upcase
end

def generate_greeting(first = "Steven", *rest)
  yield "#{GREETER} #{first}"
  rest.each do |person|
    yield "#{GREETER} #{person}"
  end
end

hello()
hello("Amy","Ben","Carol")

generate_greeting("Amy", "Ben", "Carol") do |greeting|
  puts shout(greeting)
end

