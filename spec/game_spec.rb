require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player}

  describe '#Recieves Player' do
    it 'retrieves the first player' do
      expect(game.player_one).to eq player
    end

    it 'retrieves the Second player' do
      expect(game.player_two).to eq "Bot"
    end
  end

  describe '#Computer_selection' do
    it 'returns a random string' do
      expect(game.computer_selection).to be_a(String)
    end
  end

  # describe '#rock' do
  #   it 'Lizard should return true' do
  #     expect(game.rock("Lizard")).to eq true
  #   end
  #
  #   it 'Scissors should return true' do
  #     expect(game.rock("Scissors")).to eq true
  #   end
  #
  #   it 'paper should return false' do
  #     expect(game.rock("Paper")).to eq false
  #   end
  #
  #   it 'Spock should return false' do
  #     expect(game.rock("Spock")).to eq false
  #   end
  # end
end
