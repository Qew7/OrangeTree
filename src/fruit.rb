class Fruit
  COLORS = %w[red green yellow pink blue].freeze
  TASTES = %w[awful mediocre good amazing].freeze

  attr_reader :color, :taste

  def initialize
    @color = COLORS.sample
    @taste = TASTES.sample
  end
end
