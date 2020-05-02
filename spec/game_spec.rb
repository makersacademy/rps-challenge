require 'game'

describe Game do

  let(:player1) { double(name: "Dave", move: "ROCK") }
  let(:player2) { double(name: "John", move: "PAPER") }
  let(:player3) { double(name: "Paul", move: "SCISSORS") }
  subject(:game) { Game.new(player1) }
  subject(:multi_game1) { Game.new(player1, player2) }
  subject(:multi_game2) { Game.new(player2, player3) }
  subject(:multi_game3) { Game.new(player3, player1) }
  subject(:multi_game4) { Game.new(player1, player1) }
  
  describe 'player' do 
    it "saves player object" do      
      expect(game.player1).to eq player1
    end
  end

  describe '#random' do
    it 'returns either rock, paper or scissors - 100 times' do
      100.times { expect(["ROCK", "PAPER", "SCISSORS"].include?(subject.send(:random))).to eq true }
    end
  end

  describe '#compare' do
    context 'two player' do
      it 'returns true when first argument wins' do
        expect(subject.send(:compare, player1.move, player3.move)).to eq true
        expect(subject.send(:compare, player2.move, player1.move)).to eq true
        expect(subject.send(:compare, player3.move, player2.move)).to eq true
      end
    end

    context 'one player' do
      it 'returns true or false' do
        expect(subject.send(:compare, player1.move, ["ROCK", "PAPER", "SCISSORS"].sample)).to eq(true).or eq(false).or eq("Draw")
      end
    end

    context 'draw' do 
      it 'returns draw' do
        expect(subject.send(:compare, player3.move, player3.move)).to eq "Draw"
      end
    end
  end

  describe '#play' do
    it 'returns winner if 2 player' do
      expect(multi_game1.play).to eq(player2.name)
      expect(multi_game2.play).to eq(player3.name)
      expect(multi_game3.play).to eq(player1.name)
    end

    it 'returns draw if draw' do 
      expect(multi_game4.play).to eq("NOBODY (It was a draw)")
    end

    it 'returns player1 or computer or Draw - 100 times' do 
      100.times {
        expect(game.play).to(satisfy { eq('Dave') or eq('COMPUTER') or eq("NOBODY (It was a draw)") })
      }
    end
  end
end
