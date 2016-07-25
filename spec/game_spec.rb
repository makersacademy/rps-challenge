require 'game'

describe Game do

  let(:player_1) { double(:player_1) }
  let(:weapon1) { :Rock }
  let(:weapon2) { :Scissors }
  let(:weapon3) { :Paper }
  subject { described_class.new(player_1) }

  describe '#self.create' do
    it "creates a new instance of game" do
       game = Game.create(player_1)
       expect(Game.instance).to eq game
    end
   end

  describe '#game_outcome' do
    context 'It\'s a draw' do
      it 'returns a message that it\'s a tie' do
      allow(subject).to receive(:player_1_weapon).and_return(weapon1)
      allow(subject).to receive(:comp_choice).and_return(weapon1)
      expect(subject.game_outcome).to eq "It's a tie"
      end
    end

    context 'player 1 wins' do
      it 'returns a message that player 1 has won' do
      allow(subject).to receive(:player_1_weapon).and_return(weapon3)
      allow(subject).to receive(:comp_choice).and_return(weapon1)
      expect(subject.game_outcome).to eq "You win!!"
      end
    end

    context 'player 1 loses' do
      it 'returns a message that player 1 has lost' do
      allow(subject).to receive(:player_1_weapon).and_return(weapon2)
      allow(subject).to receive(:comp_choice).and_return(weapon1)
      expect(subject.game_outcome).to eq "You lose!!"
      end
    end
  end

end
