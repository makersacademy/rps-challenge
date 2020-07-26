require 'game'
describe Game do
  let(:player) { double :player, name: "Haz", move: 'Rock'}
  subject { described_class.new(player) }

  it 'accepts player instances' do
    expect(subject.player).to eq player
  end

  it 'stores players moves' do
    expect(subject.player_move).to eq 'Rock'
  end

  it 'stores computers moves' do
    allow(subject).to receive(:computer_move).and_return('Paper')
    expect(subject.computer_move).to eq 'Paper'
  end

  describe '#tie_game?' do
    it 'returns false if the moves are equal' do 
      srand(67809)
      subject.computer_move
      expect(subject.tie_game?).to eq false
    end
    it 'returns true if the moves are equal' do
      srand(67810)
      subject.computer_move
      expect(subject.tie_game?).to eq true
    end
  end

  describe '#winner' do 
    it 'returns the winner of the game' do 
      srand(67808)
      subject.computer_move
      expect(subject.winner).to eq Game::COMPUTER_NAME
    end
    it 'returns the winner of the game' do 
      srand(67809)
      subject.computer_move
      expect(subject.winner).to eq player.name
    end
  end
end
