# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'if valid input for author' do
    visit new_book_path
    fill_in 'Author', with: 'J.K Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K Rowling')
  end
  scenario 'if valid input for price' do
    visit new_book_path
    fill_in 'Price', with: '15'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15')
  end
  scenario 'if valid input for published date' do
    visit new_book_path
    fill_in 'Published Date', with: ''
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('July 21 2007')
  end
end

