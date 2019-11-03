require 'game'

describe Game do

  context 'initial test' do
    it 'player 1 should be Andy' do
      game = Game.new("Andy", "Sheldon")
      expect(game.player_1).to eq 'Andy'
    end
  end

  context 'checking game outcomes' do
    let(:andy_rock) { double('Player', name: "Andy", selection: :rock) } 
    let(:andy_paper) { double('Player', name: "Andy", selection: :paper) } 
    let(:andy_scissors) { double('Player', name: "Andy", selection: :scissors) }
    let(:sheldon_rock) { double('Player', selection: :rock) } 
    let(:sheldon_paper) { double('Player', selection: :paper) } 
    let(:sheldon_scissors) { double('Player', selection: :scissors) }

    it 'returns draw when both select same' do
      game = Game.new(andy_rock, sheldon_rock)
      expect(game.result).to eq(:draw)
    end

    context 'player wins' do
      
      it 'player rock beats computer scissors' do
        game = Game.new(andy_rock, sheldon_scissors)
        expect(game.result).to eq(:win)
      end

      it 'player scissors beats computer paper' do
        game = Game.new(andy_scissors, sheldon_paper)
        expect(game.result).to eq(:win)
      end

      it 'player paper beats computer rock' do
        game = Game.new(andy_paper, sheldon_rock)
        expect(game.result).to eq(:win)
      end
    end

    
  end

end
