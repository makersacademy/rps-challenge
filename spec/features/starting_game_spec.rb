require 'spec_helper'

feature do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_button 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'I can enter my name' do
    visit '/'
    click_button 'New Game'
    fill_in('name',with: 'Player')
    click_button('Submit')
    expect(page).to have_content 'Hello Player, welcome to RPS'
  end

  scenario 'I can pick' do
    visit '/'
    click_button 'New Game'
    fill_in('name',with: 'Player')
    click_button('Submit')
    select "Rock", from: "choices"
    click_button"Play"
    expect(page).to have_content("You picked Rock")
  end

end
