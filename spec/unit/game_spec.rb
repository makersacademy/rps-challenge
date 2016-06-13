require 'game'

describe Game do
  let(:player1) {double :player, name: "name1"}
  let(:player2) {double :player, name: "name2"}
  subject(:game){described_class.new(player1,player2)}


  describe '#eval' do
    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Rock)
      allow(player2).to receive(:option).and_return(:Scissor)
      game.eval
      expect(game.result).to eq :win
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Paper)
      allow(player2).to receive(:option).and_return(:Paper)
      game.eval
      expect(game.result).to eq :tie
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Scissor)
      allow(player2).to receive(:option).and_return(:Rock)
      game.eval
      expect(game.result).to eq :lose
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Spock)
      allow(player2).to receive(:option).and_return(:Lizard)
      game.eval
      expect(game.result).to eq :lose
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Lizard)
      allow(player2).to receive(:option).and_return(:Scissor)
      game.eval
      expect(game.result).to eq :lose
    end


  end


end