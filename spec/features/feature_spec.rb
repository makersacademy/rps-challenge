require './lib/game'

feature 'Entering name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('CaptainCode vs RosiePoSie')
  end
end

feature 'Gameplay' do
  scenario 'player wins with rock' do
    game = double("game")
    allow(game). to receive(:auto_play) { 'scissors' }
    sign_in_and_play
    click_on 'Rock'
      game.auto_play
    expect(page).to have_content("Woo, rock beats scissors!")
  end
end
