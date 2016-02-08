require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player_1, name: 'player 1', weapon: :rock) }
  let(:player_2) { double(:player_2, name: 'player 2', weapon: :paper) }

  subject(:single_game) { described_class.new(player_1, player_nil) }
  let(:player_nil) { double(:player_nil, name: nil) }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq player_2
    end

    it 'creates a CpuPlayer if no player 2 on game creation' do
      expect(single_game.player_2).to be_a(CpuPlayer)
    end
  end

  describe '#turn' do
    it 'starts turn with player 1' do
      expect(game.turn).to eq player_1
    end
  end

  describe '#set_turn' do
    it 'sets player 2\'s turn if multiplayer and currently player 1\'s turn' do
      allow(player_2).to receive(:is_a?).and_return(true)
      game.set_turn
      expect(game.turn).to eq player_2
    end

    it 'resets to player 1\'s turn if currently player 2\'s turn' do
      allow(game).to receive(:player_1s_turn?).and_return(false)
      game.set_turn
      expect(game.turn).to eq player_1
    end

    it 'resets to player 1\'s turn if not multiplayer' do
      allow(player_2).to receive(:is_a?).and_return(false)
      game.set_turn
      expect(game.turn).to eq player_1
    end
  end

  describe '#stage' do
    it 'returns /play if p2\'s turn and multiplayer' do
      allow(player_2).to receive(:is_a?).and_return(true)
      allow(game).to receive(:player_2s_turn?).and_return(true)
      expect(game.stage).to eq '/play'
    end

    it 'returns /endround if round is done or playing against cpu' do
      allow(player_2).to receive(:is_a?).and_return(false)
      expect(game.stage).to eq '/endround'
    end
  end

  describe '#round_result' do
    it 'returns win on rock vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_result).to eq :win
    end

    it 'returns win on paper vs rock' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :win
    end

    it 'returns win on scissors vs paper' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_result).to eq :win
    end

    it 'returns lose on scissors vs rock' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :lose
    end

    it 'returns the round winner player_2 rock vs paper' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_result).to eq :lose
    end

    it 'returns the round winner player_2 paper vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_result).to eq :lose
    end

    it 'returns draw if same weapon' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :draw
    end
  end

  describe '#p1_weapon' do
    it 'returns player 1 weapon' do
      game.round_result
      expect(game.p1_weapon).to eq :rock
    end
  end

  describe '#p2_weapon' do
    it 'returns player 2 weapon' do
      game.round_result
      expect(game.p2_weapon).to eq :paper
    end
  end
end
