require 'spec_helper'
require 'game'

describe Game do
  let(:human_1) { double(:player, is_computer: false, move: nil) }
  let(:human_2) { double(:player, is_computer: false, move: nil) }
  let(:computer_1) { double(:player, is_computer: true, move: nil) }
  let(:computer_2) { double(:player, is_computer: true, move: nil) }
  subject(:human_vs_human) { described_class.new(human_1, human_2) }
  subject(:human_vs_computer) { described_class.new(human_1, computer_2) }
  subject(:computer_vs_computer) { described_class.new(computer_1, computer_2) }


  describe '#get_move' do
    it 'accpts an argument' do
      expect(human_vs_human).to respond_to(:get_move).with(1).argument
    end

    it 'assigns a computer a move' do
      expect([:rock, :paper, :scissors]).to include(human_vs_computer.get_move(computer_1))
    end
  end

  # describe '#set_move' do
  #   it 'records a computer\'s move to the player object' do
  #     human_vs_computer.set_move(computer_2)
  #     expect([:rock, :paper, :scissors]).to include(human_vs_computer.player_2.move)
  #   end
  # end
  describe '#winner' do
    it 'returns @player_1 as winner when player_1 wins' do
      expect(human_vs_human.winner(:scissors, :paper)).to eq human_1
    end

    it 'returns @player_2 as winner when player_2 wins' do
      expect(human_vs_human.winner(:scissors, :rock)).to eq human_2
    end

    it 'returns a draw when users make the same move' do
      expect(human_vs_human.winner(:paper, :paper)).to eq :draw
    end   
  end
end