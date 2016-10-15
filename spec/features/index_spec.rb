require "spec_helper"

feature 'Allows user to choose game type' do
  scenario 'Player has choice of Single Player' do
    visit('/')
    expect(page).to have_content 'Single Player'
  end

  scenario 'Player is redirected to register' do
    visit('/')
    click_button 'Single Player'
    expect(page).to have_content 'Player vs AI'
    expect(page).to have_content 'Please register below to play'
  end
end
