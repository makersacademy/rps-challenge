require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "Winner: Zoe"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "Winner: Computer"
  end

  scenario "When I submit 'Rock' I am told if I have drawn" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "It's a draw!"
  end

end
