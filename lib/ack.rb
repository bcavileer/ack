require "ack/version"
require "tco_method"

module Ack
  extend TCOMethod::Mixin

  def self.ack(m, n)
    if m == 0
      n + 1
    else
      if n == 0
        ack(m-1, 1)
      else
        ack(m-1, ack(m, n-1))
      end
    end
  end

  tco_module_method :ack

  def self.demo
    (0...6).each do |i|
      (0...6).each do |j|
        puts "ackerman (#{i},#{j}) is: #{ack(i, j)}"
      end
    end
  end
end
