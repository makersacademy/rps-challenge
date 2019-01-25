require './models/game'

describe Game do
  let(:cpu) { double(:cpu, move: true) }
  let(:cpu_class) { double(:cpu_class, new: cpu) }
  let(:player) { double(:player, move: true) }
  let(:rps) { double(:rps, available_moves: ["Rock", "Paper", "Scissors"]) }
  let(:rps_class) { double(:rps_class, new: rps) }
  let(:game) { Game.new(player, cpu_class, rps_class) }

  describe '#select_player_move' do

    it 'should store this in players move' do
      expect(player).to receive(:select_move)
      game.select_player_move("Paper")
    end

  end

  describe '#select_random' do

    it 'should select a random move' do
      expect(cpu).to receive(:select_move)
      game.select_cpu_move
    end

    it 'should store this in cpu move' do
      expect(cpu).to receive(:select_move)
      game.select_cpu_move
    end
  end

  describe '#decide_result' do

    it 'shoud decide the winner' do
      expect(rps).to receive(:decide_result)
      game.decide_result
    end
  end

end
