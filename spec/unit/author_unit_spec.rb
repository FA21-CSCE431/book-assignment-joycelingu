# location: spec/unit/author_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'J.K Rowling')
    end
    
    it 'is valid with valid author' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without an author' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
  end