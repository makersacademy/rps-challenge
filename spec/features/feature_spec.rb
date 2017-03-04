require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'register name' do
  scenario 'enter name and see it' do
      visit '/'
      fill_in 'name', with: 'Noora'
      click_button 'Submit'
      expect(page).to have_content 'Noora'
  end
end


# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'playing game' do
  before do
    visit '/'
    fill_in 'name', with: 'Noora'
    click_button 'Submit'
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like to be able to see the shape options
  scenario 'see shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like to be able to choose a shape
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'Your choice: Rock'
  end
end
