require 'game'

describe Game do
  let(:player) {double(:player_choice)}
  let(:computer) {double(:computer)}
  subject(:game) {described_class.new(player, computer)}

  it 'can return the player\'s choice' do
    expect(game.player_choice).to eq player
  end

  it 'can return the computer\'s choice' do
    expect(game.computer_choice).to eq computer
  end

  it 'returns true when player_choice = computer_choice' do
    player_2 = computer
    game_draw = described_class.new(player_2, computer)
    expect(game_draw.draw?).to eq true
  end
end
