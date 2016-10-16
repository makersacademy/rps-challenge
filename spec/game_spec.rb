require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double :player }
  let(:player_2) {double :player, name: 'Opponent' }

describe '#name' do
  it 'shows player name' do
    expect(game.player_2.name). to eq 'Opponent'
  end
end

# feature 'Computer can play' do
#   before do
#     sign_in
#     choose 'Rock'
#   end
#   scenario 'Computer opponent can choose Rock, paper or scissors' do
#     click_button 'Submit'
#     allow(game).to receive(:auto_turn).and_return('Rock')
#     expect(page).to have_content 'Opponent chose Rock'
#   end
# end

end
