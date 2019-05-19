require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:subject) { Game.new(player, computer) }

  describe '#player' do
    it 'returns player' do
      expect(subject.player).to eq(player)
    end
  end

  describe '#computer' do
    it 'returns computer' do
      expect(subject.computer).to eq(computer)
    end
  end

  describe '#random_choice' do
    it 'returns random choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return("rock")

      expect(subject.random_choice).to eq("rock")
    end
  end

  describe '#set_winner' do
    def self.test_player_wins(player_choice, computer_choice)
      it "sets player as winner" do
        allow(player).to receive(:choice).and_return(player_choice)
        allow(computer).to receive(:choice).and_return(computer_choice)
        subject.set_winner(player, computer)

        expect(subject.winner).to eq(player)
      end
    end

    test_player_wins("Rock", "Scissors")
    test_player_wins("Scissors", "Paper")
    test_player_wins("Paper", "Rock")

    def self.test_computer_wins(player_choice, computer_choice)
      it "sets computer as winner" do
        allow(player).to receive(:choice).and_return(player_choice)
        allow(computer).to receive(:choice).and_return(computer_choice)
        subject.set_winner(player, computer)

        expect(subject.winner).to eq(computer)
      end
    end

    test_computer_wins("Scissors", "Rock")
    test_computer_wins("Paper", "Scissors")
    test_computer_wins("Rock", "Paper")
  end
end
