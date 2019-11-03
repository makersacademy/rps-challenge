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

  end

end
