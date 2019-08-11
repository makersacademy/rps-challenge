require_relative '../lib/game'
describe Game do
  let(:player) { double(:player, name: "Cher") }
  let(:opponent) { double(:player, name: "Meat Loaf") }
  context 'single player' do
    subject { described_class.new(player) }

    it 'shows player name' do
      expect(subject.player_name).to eq("Cher")
    end

    it 'shows player wins' do
      subject.player_move('rock')
      srand(1)
      subject.robot_move
      p subject.moves
      expect(subject.result).to eq(:player_win)
      subject.update_scorecard
      expect(subject.scorecard).to eq({ player: 1, opponent: 0, draws: 0 })
    end
    it 'shows a tie' do
      subject.player_move('rock')
      srand(2)
      subject.robot_move
      p subject.moves
      expect(subject.result).to eq(:tie)
      subject.update_scorecard
      expect(subject.scorecard).to eq({ player: 0, opponent: 0, draws: 1 })
    end
    it 'shows a robot win' do
      subject.player_move('rock')
      srand(3)
      subject.robot_move
      p subject.moves
      expect(subject.result).to eq(:robot_win)
      subject.update_scorecard
      expect(subject.scorecard).to eq({ player: 0, opponent: 1, draws: 0 })

    end

    it 'resets the moves' do
      subject.player_move('rock')
      srand(1)
      subject.robot_move
      subject.update_scorecard
      subject.reset
      expect(subject.scorecard).to eq({ player: 1, opponent: 0, draws: 0 })
      expect(subject.moves).to eq([nil, nil])

    end

  end

  context 'two player game' do
    subject { described_class.new(player, opponent) }
    it 'declares the opponent the winner' do
      subject.player_move('rock')
      subject.opponent_move('paper')
      p subject.moves
      expect(subject.result).to eq(:opponent_win)
      subject.update_scorecard
      expect(subject.scorecard).to eq({ player: 0, opponent: 1, draws: 0 })

    end
  end

end
