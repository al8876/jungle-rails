require 'rails_helper'

# describe Product do
#   it { is_expected.to validate_presence_of(:name) }
#   it { is_expected.to validate_presence_of(:price_cents) }
#   it { is_expected.to validate_presence_of(:quantity) }
#   it { is_expected.to validate_presence_of(:category_id) }
# end

RSpec.describe Product, type: :model do
  
  before :example do
    @mug = Product.new name: 'mug', price_cents: 5, quantity: 10, category_id: 1
  end

  it 'Creates a new product record with name, price, quantity, and category' do
    expect(@mug.valid?).to eq true
  end

  describe 'Validations' do
    
    it 'throws an error if name is missing' do
      @mug.name = nil;
      expect(@mug.valid?).to eq false
    end

    it 'throws an error if price is missing' do
      @mug.price_cents = nil;
      expect(@mug.valid?).to eq false
    end

    it 'throws an error if quantity is missing' do
      @mug.quantity = nil;
      expect(@mug.valid?).to eq false
    end

    it 'throws an error if category is missing' do
      @mug.category_id = nil;
      expect(@mug.valid?).to eq false
    end

  end
end