# location: spec/unit/price_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'J.K Rowling', price: '14.99')
    end
    
    it 'is valid with valid price' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a price' do
      subject.price = nil
      expect(subject).not_to be_valid
    end
  end