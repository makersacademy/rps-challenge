require "spec_helper"

feature 'Allows user to choose game type' do
  scenario 'Player has choice of Single Player' do
    visit('/')
    find_button('Single Player').click
  end

  scenario 'Player is redirected to register' do
    visit('/')
    click_button 'Single Player'
    expect(page).to have_content 'You have chosen to play our Advanced Rock-Paper-Scissors AI: Deep Green'
    expect(page).to have_content 'Please register below to play'
  end
end
