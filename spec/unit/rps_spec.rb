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
      win = Rps.new('scissors', 'paper', 1)
      win.result
      expect(win.score).to eq 2
    end

    it 'lets player loose' do
      loose = Rps.new('scissors', 'rock', 1)
      loose.result
      expect(loose.score).to eq 0
    end

    it 'evaluates draw' do
      draw = Rps.new('rock', 'rock', 1)
      draw.result
      expect(draw.score).to eq 1
    end
  end
end
