require 'player'

describe Player do
  let(:player) { Player.new 'Ed'}
  context 'player starts with a' do
    it 'win count' do
      expect(player.win_count).to eq 0
    end
    it 'lose count' do
      expect(player.lose_count).to eq 0
    end
  end
  context 'choosing a move' do
    it 'can fail if incorrect move chosen' do
      expect { player.choose 'Cape' }.to raise_error 'Incorrect Move'
    end
  end
 context 'Winning a game:' do
    it 'Rock Vs Scissors' do
      allow(player).to receive(:player_2_move).and_return(['Scissors'])
      player.choose 'Rock'
      expect(player.win_count).to eq 1
    end
    it 'Scissors Vs Paper' do
      allow(player).to receive(:player_2_move).and_return(['Paper'])
      player.choose 'Scissors'
      expect(player.win_count).to eq 1
    end
    it 'Paper Vs Rock' do
      allow(player).to receive(:player_2_move).and_return(['Rock'])
      player.choose 'Paper'
      expect(player.win_count).to eq 1
    end
  end
  context 'Losing a game:' do
    it 'Scissors Vs Rock' do
      allow(player).to receive(:player_2_move).and_return(['Rock'])
      player.choose 'Scissors'
      expect(player.lose_count).to eq 1
    end
    it 'Rock Vs Paper' do
      allow(player).to receive(:player_2_move).and_return(['Paper'])
      player.choose 'Rock'
      expect(player.lose_count).to eq 1
    end
    it 'Paper Vs Scissors' do
      allow(player).to receive(:player_2_move).and_return(['Scissors'])
      player.choose 'Paper'
      expect(player.lose_count).to eq 1
    end
  end
  context 'Drawing' do
    it 'can draw' do
      allow(player).to receive(:player_2_move).and_return(['Scissors'])
      player.choose 'Scissors'
      expect(player.win_count).to eq 0
    end
  end
  context 'Multiple games' do
    it 'can start a game again' do
      allow(player).to receive(:player_2_move).and_return(['Paper'])
      player.choose 'Rock'
      expect(player.move).to eq []
    end
  end
end
