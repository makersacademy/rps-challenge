require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'playing the game' do
  pending "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content "Winner: Zoe"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content "Winner: Computer"
  end

  pending "When I submit 'Rock' I am told if I have drawn" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_content "It's a draw!"
  end

end
