require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'Navigation', type: :feature do
  before :each do
    User.create(id: 1, name: 'Test', email: 'test@test.com', password: 'test1234', role: 'user', confirmed_at: Time.now)
    visit '/users/sign_in'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'test1234'
    click_button 'Log in'
    visit root_path
  end

  it 'Should have a link to the home page' do
    expect(page).to have_link 'Home', href: root_path
  end

  it 'Should have a link to the my recipes page' do
    expect(page).to have_link 'My recipies', href: recipes_path
  end

  it 'Should have a link to the my ingredients page' do
    expect(page).to have_link 'Food', href: foods_path
  end

  it 'Should direct to the home page when clicking the home link' do
    click_link 'Home'
    expect(current_path).to eq root_path
  end

  it 'Should direct to the my recipes page when clicking the my recipes link' do
    click_link 'My recipies'
    expect(current_path).to eq recipes_path
  end

  it 'Should direct to the my ingredients page when clicking the my ingredients link' do
    click_link 'Food'
    expect(current_path).to eq foods_path
  end
end
