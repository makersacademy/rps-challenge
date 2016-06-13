require 'game'

describe Game do
  let(:player1) {double :player, name: "name1"}
  let(:player2) {double :player, name: "name2"}
  subject(:game){described_class.new(player1,player2)}


  describe '#game_evaluation' do
    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Rock)
      allow(player2).to receive(:option).and_return(:Scissor)

      expect(game.evaluation).to eq :win
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Paper)
      allow(player2).to receive(:option).and_return(:Paper)

      expect(game.evaluation).to eq :tie
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Scissor)
      allow(player2).to receive(:option).and_return(:Rock)

      expect(game.evaluation).to eq :lose
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Spock)
      allow(player2).to receive(:option).and_return(:Lizard)

      expect(game.evaluation).to eq :lose
    end

    it 'tells who won the game' do
      allow(player1).to receive(:option).and_return(:Lizard)
      allow(player2).to receive(:option).and_return(:Scissor)

      expect(game.evaluation).to eq :lose
    end


  end


end