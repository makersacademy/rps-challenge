require 'game'
  describe Game do
    subject(:game) {described_class.new(player)}
    let(:player) {double :player, name: "harry"}
    let(:rock) {"rock"}
    let(:paper) {"paper"}
    let(:scissors) {"scissors"}

      it 'starts with a player' do
        expect(game.player).to eq player
      end
    describe '#rock' do
      it 'returns player wins when computer shows scissors' do
        game.rock(scissors)
        expect(game.winner).to eq "harry wins"
      end
      it 'returns computer wins when computer shows paper' do
        game.rock(paper)
        expect(game.winner).to eq "computer wins"
      end
      it 'returns the game is a tie when computer shows paper' do
          game.rock(rock)
          expect(game.winner).to eq "game is a tie"
      end
    end
    describe '#scissors' do
      it 'returns player wins when computer shows paper' do
        game.scissors(paper)
        expect(game.winner).to eq "harry wins"
      end
      it 'returns computer wins when computer shows rock' do
        game.scissors(rock)
        expect(game.winner).to eq "computer wins"
      end
      it 'returns the game is a tie when computer shows scissors' do
          game.scissors(scissors)
          expect(game.winner).to eq "game is a tie"
      end
    end
    describe '#paper' do
      it 'returns player wins when computer shows rock' do
        game.paper(rock)
        expect(game.winner).to eq "harry wins"
      end
      it 'returns computer wins when computer shows scissors' do
        game.paper(scissors)
        expect(game.winner).to eq "computer wins"
      end
      it 'returns the game is a tie when computer shows paper' do
          game.paper(paper)
          expect(game.winner).to eq "game is a tie"
      end
    end
  end