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
    context 'when one player chooses rock' do
      context 'when other player chooses scissors' do
        it 'returns win for player who played rock' do
          allow(player_2).to receive(:choice).and_return scissors
          game.play(rock)
          expect(subject).to eq "#{player_name} wins!"
        end
      end
      context 'when other player chooses paper' do
        it 'returns win for player who played paper' do
          allow(player_2).to receive(:choice).and_return paper
          game.play(rock)
          expect(subject).to eq "#{player_2_name} wins!"
        end
      end
    end
    context 'when one player chooses paper' do
      context 'when other player chooses scissors' do
        it 'returns win for player who played scissors' do
          allow(player_2).to receive(:choice).and_return scissors
          game.play(paper)
        end
      end
    end
  end


end
