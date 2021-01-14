# frozen_string_literal: true

require_relative '../libs/gilden_rose'
require_relative '../libs/item'

RSpec.describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq('foo')
    end

    it 'update quality of legendary item' do
      items = [Item.new('Sulfuras, Hand of Ragnaros', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq(80)
    end

    it 'update quality of Aged Brie' do
      items = [Item.new('Aged Brie', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq(1)
    end

    it 'update quality of Conjured item' do
      items = [Item.new('Conjured item', 20, 30)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq(28)
    end

    it 'update quality of Backstage passes to a TAFKAL80ETC concert' do
      items = [Item.new('Backstage passes to a TAFKAL80ETC concert', 4, 30)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq(33)
    end

    it 'when update quality the sell_in decreases' do
      items = [Item.new('item1', 15, 30)]
      GildedRose.new(items).update_quality
      expect(items[0].sell_in).to eq(14)
      expect(items[0].quality).to eq(29)
    end
  end
end
