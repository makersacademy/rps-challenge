require 'game'

describe Game do 
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  let(:subject) { described_class.new(player_1, player_2) }

  describe '#initialization' do 
    it { expect(subject.player_1).to eq player_1 }
    it { expect(subject.player_2).to eq player_2 }
    it { expect(subject.players).to include player_1, player_2 }
  end

  describe '#make_move' do 
    before do 
      allow_doubles_to_receive_moves
    end
    it 'makes player moves and stores them' do 
      subject.make_move('rock')
      expect(subject.player_1.move).to eq 'rock'
    end
  end

  describe '#switch_turns' do
    before do 
      allow_doubles_to_receive_moves
    end
    it 'switches turns when called' do 
      subject.switch_turns
      expect(subject.players.first).to eq player_2
    end
    it "makes player_2 move after player_1's turn" do 
      subject.make_move('rock')
      subject.switch_turns
      subject.make_move('scissors')
      expect(subject.player_2.move).to eq 'scissors'
    end
  end

  def allow_doubles_to_receive_moves
    allow(player_1).to receive(:make_move).with(any_args).and_return('rock')
    allow(player_1).to receive(:move).and_return('rock')
    allow(player_2).to receive(:make_move).with(any_args).and_return('scissors')
    allow(player_2).to receive(:move).and_return('scissors')
  end
end
