require 'game'

describe Game do
  let(:player1) { double(:player, name: 'Phil') }
  let(:player2) { double(:player, name: 'Su') }
  let(:player_class) { double(:player_class) }
  let(:list) { double(:list, :rule => "rock blunts scissors") }
  let(:list_class) { double(:list_class) }

  before do
    allow(player_class).to receive(:new).and_return(player1, player2)
    allow(list_class).to receive(:new).and_return(list)
  end

  subject do
    Game.new(['Phil', 'Su'], player_class, list_class)
  end

  describe 'accessing players' do
    it 'tells you who is player 1' do
      expect(subject.player1).to eq player1
    end

    it 'tells you who is player 2' do
      expect(subject.player2).to eq player2
    end
  end

  describe '#moves_complete?' do
    it 'tells you if the moves are complete' do
      # stub a private method
      # it doesn't matter what create_move is set to return, as long as it returns something
      allow_any_instance_of(Game).to receive(:create_move).and_return("move")

      subject.make_move('Rock')
      subject.make_move('Paper')
      expect(subject.moves_complete?).to eq true
    end

    it 'tells you if the moves are not complete' do
      expect(subject.moves_complete?).to eq false
    end
  end

  describe '#current_player' do
    it 'tells you when it is player 1s turn' do
      expect(subject.current_player).to eq player1
    end

    it 'tells you when it is player 2s turn' do
      allow(list).to receive(:store_move)
      subject.make_move("move")
      expect(subject.current_player).to eq player2
    end
  end

  describe '#reset' do
    it 'resets the result when you want to replay' do
      expect { subject.reset }.to change { subject.result }.from(nil).to('')
    end
  end

  describe '#result' do
    let(:move1) { double(:move, :type => 'Rock') }
    let(:move2) { double(:move, :type => 'Rock') }

    it 'sets the result when it is a draw' do
      # returns nil when both moves are the same
      allow(move1).to receive(:winner_vs).and_return(nil)
      # stub a private method
      allow_any_instance_of(Game).to receive(:create_move).and_return(move1)
      allow(list).to receive(:rule).and_return('both players chose rock')

      subject.make_move(move1)
      subject.make_move(move1)
      subject.decide_result
      expect(subject.result).to eq "It's a draw - both players chose rock"
    end

    it 'sets the result when player one wins' do
      allow(move1).to receive(:winner_vs).and_return(move1)
      # stub a private method
      allow_any_instance_of(Game).to receive(:create_move).and_return(move1, move2)

      subject.make_move(move1)
      subject.make_move(move2)
      subject.decide_result
      expect(subject.result).to eq "Phil wins - rock blunts scissors"
    end

    it 'sets the result when player two wins' do
      allow(move1).to receive(:winner_vs).and_return(move2)
      # stub a private method
      allow_any_instance_of(Game).to receive(:create_move).and_return(move1, move2)

      subject.make_move(move1)
      subject.make_move(move2)
      subject.decide_result
      expect(subject.result).to eq "Su wins - rock blunts scissors"
    end
  end
end
