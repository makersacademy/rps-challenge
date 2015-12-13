require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double :player, name: 'Ruby', choice: 'Rock' }
  let(:player2) { double :player, name: 'Ruby', choice: 'Paper' }
  let(:player3) { double :player, name: 'Ruby', choice: 'Scissors' }
  let(:opponent) { double :opponent, name: 'Computer', choice: 'Rock' }
  let(:opponent2) { double :opponent, name: 'Computer', choice: 'Paper' }
  let(:opponent3) { double :opponent, name: 'Computer', choice: 'Scissors' }

  it 'takes a player as an argument' do
    expect(game.player).to eq player
  end

  it 'takes an opponent as an argument' do
    expect(game.opponent).to eq opponent
  end

  context 'Player wins' do
    it 'player chooses rock, opponent chooses scissors' do
      expect(game.winner(player, opponent3)).to eq 'Ruby'
    end

    it 'player chooses paper, opponent chooses rock' do
      expect(game.winner(player2, opponent)).to eq 'Ruby'
    end

    it 'player chooses scissors, opponent chooses paper' do
      expect(game.winner(player3, opponent2)).to eq 'Ruby'
    end
  end

  context "It's a draw" do
    it 'player and opponent both choose rock' do
      expect(game.winner(player, opponent)).to eq "It's a draw"
    end

    it 'player and opponent both choose paper' do
      expect(game.winner(player2, opponent2)).to eq "It's a draw"
    end

    it 'player and opponent both choose scissors' do
      expect(game.winner(player3, opponent3)).to eq "It's a draw"
    end
  end

  context 'Opponent wins' do
    it 'player chooses rock, opponent chooses paper' do
      expect(game.winner(player, opponent2)).to eq 'Computer'
    end

    it 'player chooses paper, opponent chooses scissors' do
      expect(game.winner(player2, opponent3)).to eq 'Computer'
    end

    it 'player chooses scissors, opponent chooses rock' do
      expect(game.winner(player3, opponent)).to eq 'Computer'
    end
  end
end
