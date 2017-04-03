require 'game'

describe Game do
  subject(:game){described_class.new(player, computer)}
  let(:player) {double(:player, choice: :rock)}
  let(:computer) {double(:computer, random_choice: :rock)}
  it 'checks player is set to @player' do
    expect(game.player).to eq player
  end

  it 'checks player is set to @player' do
    expect(game.player).to eq player
  end

  it 'checks PC is set to @computer' do
    expect(game.computer).to eq computer
  end
end
