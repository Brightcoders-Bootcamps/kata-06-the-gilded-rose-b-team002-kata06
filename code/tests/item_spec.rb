# frozen_string_literal: true

require_relative '../libs/item'

RSpec.describe Item do
  test_item = Item.new('item1', 40, 50)

  it 'test right name initialization' do
    expect(test_item.name).to eq('item1')
  end

  it 'test right sell_in initialization' do
    expect(test_item.sell_in).to eq(40)
  end

  it 'test right quality initialization' do
    expect(test_item.quality).to eq(50)
  end

  describe '#to_s' do
    it 'test to_s method' do
      expect(test_item.to_s).to eq('item1, 40, 50')
    end
  end
end
