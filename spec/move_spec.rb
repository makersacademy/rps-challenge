require 'move'

describe Move do
  it { is_expected.to respond_to :player_move}

  it { is_expected.to respond_to :computer_move}

  it { is_expected.to respond_to :win_lose}

  describe '#player_move' do
    it 'expects player move to return the players move' do
      expect(subject.player_move).to eq @player_move
    end
  end

  describe '#computer_move' do
    it 'computer move to return a random move' do
      expect(subject.computer_move).to eq "Rock"
    end
  end

  describe '#win_lose' do
    it 'expects to congratulate the winner' do
      expect(subject.win_lose).to eq "You win!"
    end
  end

end
