require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Game::Weapons).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "Winner: Zoe"
  end
end
