require './models/game'

describe Game do
  let(:cpu) { double(:cpu, move: true) }
  let(:cpu_class) { double(:cpu_class, new: cpu) }
  let(:player) { double(:player, move: true) }
  let(:rps) { double(:rps, decide_result: true, available_moves: ["Rock", "Paper", "Scissors"]) }
  let(:rps_class) { double(:rps_class, new: rps) }
  let(:printer) { double(:printer, move: true) }
  let(:printer_class) { double(:printer_class, new: printer) }
  let(:game) { Game.new(player, cpu_class, rps_class, printer_class) }

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

  describe '#print_result' do

    it 'should print the winner' do
      expect(printer).to receive(:winner)
      game.print_result
    end
  end

  describe '#player_move' do

    it 'should print out the players move' do
      expect(player).to receive(:move)
      game.player_move
    end
  end

  describe '#cpu_move' do

    it 'should print out the cpus move' do
      expect(cpu).to receive(:move)
      game.cpu_move
    end
  end

  describe '#player_name' do

    it 'should print out the players name' do
      expect(player).to receive(:name)
      game.player_name
    end
  end

  describe '#cpu_name' do

    it 'should print out the cpus name' do
      expect(cpu).to receive(:name)
      game.cpu_name
    end
  end

end
