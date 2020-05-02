require 'game'

describe Game do
  let(:game) { described_class.new(player, computer) }
  let(:player) { "Rock" }
  let(:computer) { double("computer", random_pick: "Rock") }

  context '#choose_winner' do
    it 'should returns option 3 if loser' do
      allow(computer).to receive(:random_pick) { "Papper" }
      expect(game.choose_winner).to eq "You're better than this"
    end
    it 'should return option 2 if winner' do
      allow(computer).to receive(:random_pick) { "Scissors" }
      expect(game.choose_winner).to eq "I knew I can do it"
    end
    it 'should return option 1 if tie' do
      allow(computer).to receive(:random_pick) { "Rock" }
      expect(game.choose_winner).to eq "Even Steven"
    end
  end
end
