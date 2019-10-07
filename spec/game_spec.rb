require 'game'

describe Game do
  let(:player) { double :player, :move => :Rock, :name => "Mittens" }
  let(:computer) { double :computer, :move => :Scissors, :pick_move => "", :name => "Dave" }
  subject { Game.new(player, computer) }

  context '#initialize' do
    it 'creates a new game with 1 player and 1 computer' do
      expect(subject.player_1).to eq player
      expect(subject.player_2).to eq computer
    end
  end

  context '#result' do
    it 'returns a result' do
      expect(subject.result).to eq "Win"
    end

    it 'returns "Lose" if player plays Scissors and computer plays Rock' do
      allow(player).to receive(:move) { :Scissors }
      allow(computer).to receive(:move) { :Rock }
      expect(subject.result).to eq "Lose"
    end

    it 'returns "Draw" if both player and computer play the same option' do
      allow(player).to receive(:move) { :Scissors }
      expect(subject.result).to eq "Draw"
    end

    it 'returns "Win" if player plays Paper and computer plays Rock' do
      allow(player).to receive(:move) { :Paper }
      allow(computer).to receive(:move) { :Rock }
      expect(subject.result).to eq "Win"
    end

    it 'returns "Win" when player plays Scissors and computer plays Paper' do
      allow(player).to receive(:move) { :Scissors }
      allow(computer).to receive(:move) { :Paper }
      expect(subject.result).to eq "Win"
    end

    it 'returns "Lose" when player plays Paper and computer plays Scissors' do
      allow(player).to receive(:move) { :Paper }
      allow(computer).to receive(:move) { :Scissors }
      expect(subject.result).to eq "Lose"
    end

    it 'returns "Lose" when player plays Rock and computer plays Scissors' do
      allow(player).to receive(:move) { :Rock }
      allow(computer).to receive(:move) { :Paper }
      expect(subject.result).to eq "Lose"
    end

    it 'returns "Lose" when player 1 plays Spock and player 2 plays Paper' do
      allow(player).to receive(:move) { :Spock }
      allow(computer).to receive(:move) { :Paper }
      expect(subject.result).to eq "Lose"
    end
  end

  context '#message' do
    it 'returns a win message' do
      expect(subject.message).to eq "Mittens wins!"
    end

    it 'returns a lose message' do
      allow(player).to receive(:move) { :Rock }
      allow(computer).to receive(:move) { :Paper }
      expect(subject.message).to eq "Dave wins!"
    end

    it 'returns a draw message' do
      allow(player).to receive(:move) { :Rock }
      allow(computer).to receive(:move) { :Rock }
      expect(subject.message).to eq "Draw!"
    end
  end
end
