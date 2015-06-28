require 'spec_helper'

feature 'Playing a game' do
  
  scenario 'I am asked to choose my weapon to fight' do
    visit '/game'
    select 'rock', from: 'weapon'
    click_button('Fight!')
    expect(page).to have_content 'rock'  
  end

end

  