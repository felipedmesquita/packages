class Item
  attr_accessor :dimension_1, :dimension_2, :dimension_3
  def initialize w, h, l
    @dimension_1, @dimension_2, @dimension_3 = [w, h, l].sort.reverse
  end
end

class Package
  def initialize items
    @items = items
  end

  def height
    @items.map(&:dimension_1).max
  end

  def width
    @items.map(&:dimension_2).max
  end

  def length
    @items.map(&:dimension_3).inject(:+)
  end
end
