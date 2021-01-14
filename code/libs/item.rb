# This is the item class set on a diferent file but according reqs not changed
class Item
  attr_reader :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def sell_in=(sell_in)
    @sell_in = sell_in
  end

  def quality=(quality)
    @quality = quality
  end
end