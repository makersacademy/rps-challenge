require 'game'
describe Game do
  let(:player1) { double :player, name: "Haz", move: 'Rock', score: 0 }
  let(:player2) { double :player, name: "John Cena", score: 0 }
  let(:player2_move) { double :player, move: 'Paper' }
  subject { described_class.new(player1, player2) }
  let(:finished_game) { described_class.new(player1, player2_move) }

  it 'accepts player instances' do
    expect(subject.player1).to eq player1
  end

  it 'stores players moves' do
    expect(subject.player1.move).to eq 'Rock'
  end

  it 'stores computers moves' do
    allow(subject).to receive(:computer_move).and_return('Paper')
    expect(subject.computer_move).to eq 'Paper'
  end

  describe '#tie_game?' do
    it 'returns false if the moves are equal' do 
      srand(67809)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.tie_game?).to eq false
    end
    it 'returns true if the moves are equal' do
      srand(67810)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.tie_game?).to eq true
    end
  end

  describe '#winner' do 
    it 'returns the winner of the game' do 
      srand(67808)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.winner).to eq "John Cena"
    end
    it 'returns the winner of the game' do 
      srand(67809)
      allow(player2).to receive(:move).and_return(subject.computer_move)
      expect(subject.winner).to eq "Haz"
    end
  end

  describe '#game_over?' do
    it 'returns true if player 2 has gone' do
      finished_game.switch_turns
      expect(finished_game).to be_game_over
    end
    it 'returns false if player 2 is yet to go' do
      allow(player2).to receive(:move).and_return(nil)
      subject.switch_turns
      expect(subject).to_not be_game_over
    end
  end
  describe '#switch_turns' do 
    it 'changes the current_turn from player1 to player 2' do
      subject.switch_turns
      expect(subject.current_turn).to eq player2
    end
    it 'changes the current_turn from player2 to player 1' do
      subject.switch_turns
      subject.switch_turns
      expect(subject.current_turn).to eq player1
    end
  end
end
