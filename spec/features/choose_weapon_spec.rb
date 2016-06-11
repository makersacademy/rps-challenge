require 'capybara/rspec'
require_relative '../../app'

feature 'View the available weapons' do
  scenario 'shows rock and allows player to choose this weapon' do
    enter_player_name_and_click_play
    expect(page).to have_content("Rock")
  end

  scenario 'shows paper and allows player to choose' do
    enter_player_name_and_click_play
    expect(page).to have_content("Paper")
  end

  scenario 'shows scissors and allows player to choose' do
    enter_player_name_and_click_play
    expect(page).to have_content("Scissors")
  end
end
