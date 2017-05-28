require 'game'

describe Game do
  subject(:game) { described_class.new(player_one_scissors, computer_paper) }
  subject(:game_with_player_two_winning) { described_class.new(player_one_rock, computer_paper) }
  subject(:game_with_nobody_winning) { described_class.new(player_one_scissors, computer_scissors) }
  let(:scissors) { double(:weapon, type: :scissors) }
  let(:paper) { double(:weapon, type: :paper) }
  let(:rock) { double(:weapon, type: :rock) }
  let(:player_one_scissors) { double(:player, name: 'Kye', weapon: scissors) }
  let(:player_one_rock) { double(:player, name: 'Kye', weapon: rock) }
  let(:computer_paper) { double(:computer, name: 'Computer', weapon: paper) }
  let(:computer_scissors) { double(:computer, name: 'Computer', weapon: scissors) }

  describe '#initialize' do
    it 'stores a player one' do
      expect(game.player_one).to eq player_one_scissors
    end

    it 'stores a player two' do
      expect(game.player_two).to eq computer_paper
    end

    it 'has a default winner of "Nobody"' do
      expect(game.winner).to eq 'Nobody'
    end
  end

  describe '#decide_winner' do
    it 'declares player one the winner' do
      allow(scissors).to receive(:beats?).with(paper).and_return(true)
      allow(paper).to receive(:beats?).with(scissors).and_return(false)
      expect(game.decide_winner).to eq player_one_scissors
    end

    it 'declares player two the winner' do
      allow(rock).to receive(:beats?).with(paper).and_return(false)
      allow(paper).to receive(:beats?).with(rock).and_return(true)
      expect(game_with_player_two_winning.decide_winner).to eq computer_paper
    end

    it 'declares nobody the winner' do
      allow(scissors).to receive(:beats?).with(scissors).and_return(false)
      expect(game_with_nobody_winning.decide_winner).to eq "Nobody"
    end
  end
end
