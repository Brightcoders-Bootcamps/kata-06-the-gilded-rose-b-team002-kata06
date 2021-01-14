require_relative "../modules/utils"

# This is the GildedRose class made and changed for updated for items's queality update
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      Utils.update_quality(item)
    end
  end
end