require 'capybara/rspec'
require_relative '../../app'

feature 'Shows the weapons the contestants have' do
  scenario 'shows the players weapon' do
    enter_player_name_and_click_play
    click_button('Rock')
    expect(page).to have_content("#{@player_name} has chosen Rock")
  end

  scenario 'shows the computers weapon' do
    enter_player_name_and_click_play
    click_button('Rock')
    expect(page).to have_content("Computer has chosen #{@computer_weapon}")
  end

  scenario 'shows the winner' do
    enter_player_name_and_click_play
    click_button('Rock')
    expect(page).to have_content("You are the winner")
  end
end
