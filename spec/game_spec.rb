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
      allow_doubles_to_receive_moves_win
    end
    it 'makes player moves and stores them' do 
      subject.make_move('Rock')
      expect(subject.player_1.move).to eq 'Rock'
    end
  end

  describe '#switch_turns' do
    before do 
      allow_doubles_to_receive_moves_win
    end
    it 'switches turns when called' do 
      subject.switch_turns
      expect(subject.players.first).to eq player_2
    end
    it "makes player_2 move after player_1's turn" do 
      simulate_round_with_win
      expect(subject.player_2.move).to eq 'Scissors'
    end
  end

  describe '#tie?' do 
    before do
      allow_doubles_to_receive_moves_draw
    end
    it 'checks if same moves result in a draw' do 
      simulate_round_with_draw
      expect(subject.tie?).to eq true
    end
  end

  describe '#winner' do 
    before do
      allow_doubles_to_receive_moves_win
    end
    it 'checks player_1 wins' do 
      simulate_round_with_win
      expect(subject.winner).to eq player_1
    end
  end

  def allow_doubles_to_receive_moves_win
    allow(player_1).to receive(:make_move).with(any_args).and_return('Rock')
    allow(player_1).to receive(:move).and_return('Rock')
    allow(player_2).to receive(:make_move).with(any_args).and_return('Scissors')
    allow(player_2).to receive(:move).and_return('Scissors')
  end

  def allow_doubles_to_receive_moves_draw
    allow(player_1).to receive(:make_move).with(any_args).and_return('Paper')
    allow(player_1).to receive(:move).and_return('Paper')
    allow(player_2).to receive(:make_move).with(any_args).and_return('Paper')
    allow(player_2).to receive(:move).and_return('Paper')
  end

  def simulate_round_with_win
    subject.make_move('Rock')
    subject.switch_turns
    subject.make_move('Scissors')
  end

  def simulate_round_with_draw
    subject.make_move('Paper')
    subject.switch_turns
    subject.make_move('Paper')
  end
end
