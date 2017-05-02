require 'capybara'
require_relative './web_helpers.rb'

feature 'Second player is involved' do
  scenario 'redirects successfully' do
    sign_in_two_players_and_play
    expect(page).to have_content 'wants you on board, player two,'
  end
end
