# This is utils module for diferents methods
module Utils
  def Utils.update_quality(item)
    item_name = item.name
    item.quality = 80 if item_name === "Sulfuras, Hand of Ragnaros"
    item.sell_in = (item.sell_in - 1) if (item.sell_in > 0)
    if ["Aged Brie", "Backstage passes to a TAFKAL80ETC concert"].include? item_name
      item.quality += 1 if item.quality < 50 && item_name === "Aged Brie"
      item.quality += set_backstage_passes_quality(item.quality, item.sell_in) if (item_name === "Backstage passes to a TAFKAL80ETC concert")
    elsif item_name != "Sulfuras, Hand of Ragnaros"
      if item.quality < 0
        item.quality -= 1 if (item_name != "Conjured item")
        item.quality -= 2 if (item_name === "Conjured item")
      end
    end
  end
  
  def Utils.set_backstage_passes_quality(item_quality, item_sell_in)
    if (item_quality < 50)
      case item_sell_in
      when ((item_sell_in <= 10 && item_sell_in >= 6))
        return (item_quality + 2)
      when ((item_sell_in <= 5 && item_sell_in >= 1))
        return (item_quality + 3)
      when ((item_sell_in > 10))
        return (item_quality + 1)
      end
    end
    return 0
  end
end
