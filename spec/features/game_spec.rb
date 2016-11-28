require 'spec_helper'

feature 'game' do

  scenario 'should allow the player to pick rock paper scissors lizard or spock' do
    sign_in_and_play
    choose('rock')
    click_button('play')
    expect(page).to have_content('You chose rock')
  end

  scenario 'the game is able to pick rock paper scissors lizard or spock' do
    sign_in_and_play
    choose('rock')
    click_button('play')
    save_and_open_page
    expect(page).to have_content("Your opponent chose")
  end

end
