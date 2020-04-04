require 'game'

describe Game do
  let(:player1) { double(:player, name: 'Phil') }
  let(:player2) { double(:player, name: 'Su') }
  let(:player_class) { double(:player_class) }
  let(:list) { double(:list) }
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
      allow(list).to receive(:full?).and_return true
      expect(subject.moves_complete?).to eq true
    end

    it 'tells you if the moves are not complete' do
      allow(list).to receive(:full?).and_return false
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

  describe '#result' do
    it 'resets the result when you want to replay' do
      allow(list).to receive(:reset)
      allow(list).to receive(:resolve_moves).and_return 'result'
      subject.decide_result
      expect { subject.reset }.to change { subject.result }.from('result').to('')
    end

    it 'sets the result when you resolve the game moves' do
      allow(list).to receive(:resolve_moves).and_return 'result'
      expect { subject.decide_result }.to change { subject.result }.from(nil).to('result')
    end
  end
end
