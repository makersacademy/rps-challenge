require 'spec_helper'

feature 'ENTER NAMES' do
  scenario '-> lets the human player enter his name and see it on-screen' do
    sign_in_and_start
    expect(page).to have_content 'Player name: Marcus'
  end
end

feature 'Choosing R/P/S' do
  scenario 'let\'s the player choose his weapon and see this choice confirmed' do
    sign_in_and_start
    choose_weapon
    expect(page).to have_content 'Marcus chose rock'
  end
end

feature 'AI\'s turn' do
  scenario '-> let\'s the AI choose a weapon and confirm choice on-screen' do
    sign_in_and_start
    choose_weapon
    expect(page).to have_content 'Computer chose'
  end
end 
