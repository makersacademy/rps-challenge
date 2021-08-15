require 'rps'

describe Rps do

  context "#initialize" do 
    it 'takes player and compter moves attribute' do
      rps = Rps.new('rock', 'paper')
      expect(rps).to have_attributes(:player_move => 'rock', :robot_move => 'paper')
    end
  end

  context '#result' do
    it 'lets player win' do
      win = Rps.new('scissors', 'paper')
      expect(win.result).to eq 'Victory!'
    end

    it 'lets player loose' do
      loose = Rps.new('scissors', 'rock')
      expect(loose.result).to eq 'Defeat!'
    end

    it 'evaluates draw' do
      draw = Rps.new('rock', 'rock')
      expect(draw.result).to eq 'Draw!'
    end
  end
end
