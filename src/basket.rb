class Basket
  attr_reader :contains

  def initialize
    @contains = []
  end

  def add(object)
    contains << object
  end
end
