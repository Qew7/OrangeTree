require_relative 'fruit'

class Tree
  class TreeIsDeadError < ::StandardError; end
  class NoFruitsOnATree < ::StandardError; end

  attr_accessor :age, :height, :fruits, :alive

  def initialize
    @age    = 0
    @height = 0
    @fruits = []
    @alive  = true
  end

  def pick_fruit
    raise TreeIsDeadError if dead?
    raise NoFruitsOnATree unless fruits?
    fruits.pop
  end

  def grow
    raise TreeIsDeadError if dead?
    self.age += 1
    return die if age >= 35
    bear_fruits if age >= 5
  end

  def fruits?
    fruits.count > 0
  end

  private

  def die
    alive = false
  end

  def dead?
    !alive
  end

  def bear_fruits
    rand(0..10).times { fruits << Fruit.new }
  end
end
