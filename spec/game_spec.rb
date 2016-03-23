require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double(:player, name: "Kyle") }

  describe 'Game#start' do
    it 'should initiate new game' do
      expect{ described_class.start(described_class.new(player)) }.to_not raise_error
    end
  end

  describe '#player' do
    it 'should store the player' do
      expect(game.player).to eq player
    end
  end

  describe '#current' do
    it 'should return current game object' do
      described_class.start(game)
      expect(described_class.current_game).to eq game
    end
  end

  describe '#player_choice' do
    it 'should allow choice to be set' do
      game.player_choice = 'Paper'
      expect(game.player_choice).to eq :paper
    end
  end

  describe '#run_computer' do
    it 'should randomly select a weapon' do
      expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.run_computer).to eq :rock
    end
  end

  describe '#winning_player' do
    it 'should choose the correct winner' do
      expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
      game.player_choice = 'Paper'
      game.computer_choice
      game.end_game
      p game.winning_player
      expect(game.winning_player).to eq player
    end
  end

  describe '#winning_choice' do
    it 'should return winning choice' do
      expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
      game.player_choice = 'Paper'
      game.computer_choice
      game.end_game
      expect(game.winning_choice).to eq :paper
    end
  end

  describe '#end_game' do
    it 'should assign correct winning choice' do
      game.player_choice = :paper
      expect_any_instance_of(Array).to receive(:sample).and_return(:rock)
      game.computer_choice
      game.end_game
      expect(game.winning_choice).to eq :paper
    end
  end
end
