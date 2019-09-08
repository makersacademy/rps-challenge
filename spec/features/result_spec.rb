feature 'display result' do

  let(:computer) { double :computer }
  let(:player_1) {Player.new('Chuck')}
  let(:game) { Game.new(player_1) }
  
  scenario 'player beats computer' do
    sign_in_and_play
    click_button('ROCK')
    click_button('CONFIRM')
    allow(game).to receive(:computer).and_return('scissors')
    expect(page).to have_content('CHUCK WON')
  end

  # scenario 'player loses computer' do
  #   sign_in_and_play
  #   click_button('ROCK')
  #   click_button('CONFIRM')
  #   allow(game).to receive(:computer).and_return('scissors')
  #   expect(page).to have_content('CHUCK WON')
  # end

  # scenario 'player draws with computer' do
  #   sign_in_and_play
  #   click_button('ROCK')
  #   click_button('CONFIRM')
  #   allow(game).to receive(:computer).and_return('scissors')
  #   expect(page).to have_content('CHUCK WON')
  # end
end
