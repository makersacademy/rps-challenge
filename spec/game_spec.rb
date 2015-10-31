require 'game'

describe Game do
  
  let(:player) { double :player }
  subject(:game) { described_class.new(player)}

  describe 'initialization' do
    it {is_expected.to respond_to(:player)}
    it {is_expected.to respond_to(:player_hand)}
    it {is_expected.to respond_to(:cpu_hand)}
  end

  describe 'player chooses rock' do
    it {is_expected.to respond_to(:rock)}

    it "sets player_hand to 'ROCK'" do
      game.rock
      expect(game.player_hand).to eq 'ROCK'
    end
  end

end