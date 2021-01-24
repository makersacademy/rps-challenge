require 'game'

describe Game do

  let(:player_2_name) { "Computer" }
  let(:player_1) { Player.new(player_name) }
  let(:player_2) { Player.new(player_2_name) }
  subject(:game) { described_class.new(player_1, player_2) }
  let(:rock) { "Rock" }
  let(:paper) { "Paper" }
  let(:scissors) { "Scissors" }

  describe '#play' do
    subject { game.play(rock) }
    it 'changes player 1 choice' do
      expect { subject }.to change{ player_1.choice }
    end
    it 'changes player 2 choice' do
      expect { subject }.to change { player_2.choice }
    end
  end

  describe '#result' do
    subject { game.result }
    context 'when player 1 & 2 choose the same' do
      before { allow(player_2).to receive(:choice).and_return rock }
      it 'returns a draw' do
        game.play(rock)
        expect(subject).to eq "It's a draw!"
      end
    end
    context 'when player 1 chooses rock' do
      context 'when player 2 chooses scissors' do
        it 'returns player 1 wins' do
          allow(player_2).to receive(:choice).and_return scissors
          game.play(rock)
          expect(subject).to eq "#{player_name} wins!"
        end
      end
      context 'when player 2 chooses paper' do
        it 'returns player 2 wins' do
          allow(player_2).to receive(:choice).and_return paper
          game.play(rock)
          expect(subject).to eq "#{player_2_name} wins!"
        end
      end
    end
    context 'when player 1 chooses paper' do
      context 'when player 2 chooses scissors' do
        it 'returns player 2 wins' do
          allow(player_2).to receive(:choice).and_return scissors
          game.play(paper)
        end
      end
      context 'when player 2 chooses rock' do
        it 'returns player 1 wins' do
          allow(player_2).to receive(:choice).and_return rock
          game.play(paper)
        end
      end
    end
    context 'when player 1 chooses scissors' do
      context 'when player 2 choosers rock' do
        it 'returns player 2 wins' do
          allow(player_2).to receive(:choice).and_return rock
          game.play(rock)
        end
      end
      context 'when player 2 chooses paper' do
        it 'returns player 1 wins' do
          allow(player_2).to receive(:choice).and_return paper
          game.play(rock)
        end
      end
    end
  end


end
