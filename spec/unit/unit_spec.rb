# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject {
    described_class.new(title: 'harry potter')
}
  
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  #it 'is not valid without an author ' do
    #subject.author = nil
    #expect(subject).not_to be_valid
  #end
end
