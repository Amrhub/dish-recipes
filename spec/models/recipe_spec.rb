require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    User.create(id: 1, name: 'Test', email: 'test@test.com',
                password: 'test1234', role: 'user', confirmed_at: Time.now)
  end

  it 'Should update cooking_time and preparation_time' do
    recipe = Recipe.create(name: 'Test', description: 'Test', user_id: 1, cooking_time_hours: 1,
                           preparation_time_hours: 1, cooking_time_minutes: 30, preparation_time_minutes: 30)
    expect(recipe.cooking_time).to eq 1.5
    expect(recipe.preparation_time).to eq 1.5
  end
end
