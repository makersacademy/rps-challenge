# User story
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

require_relative '../../app'
require_relative './web_helper.rb'

feature 'Player registration:' do
  scenario 'Single player can register their name as Captain Kirk before playing' do
    create_CK_player # from web_helper
    expect(page).to have_content "Player 1: Captain Kirk"
  end

  scenario 'Single player can register their name as Jean-Luc Picard before playing' do
    create_JLP_player # from web_helper
    expect(page).to have_content "Player 1: Jean-Luc Picard"
  end
end
