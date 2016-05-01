require 'rps_game'

describe RpsGame do
  subject(:game) { described_class.new }
  let(:rock) { double :rock}

  it 'accepts rock, paper or scissors as an attack' do
    expect(game).to respond_to(:attack).with(1).argument
  end

  describe '#game_outcome' do
    it 'tells you when the player has won' do

    end

  end

end