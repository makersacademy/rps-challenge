require 'game'
describe Game do

  let(:player_1) { double('Tom') }
  let(:player_2) { double('Jerry') }

  let(:game) { described_class.new(player_1_class: player_1, player_2_class: player_2)}

  it 'is initialized with a player' do
    expect(game.player_1).to eq(player_1)
  end

end