require 'rps'

describe Rps do

  let(:player) { double }
  let(:robot) { double }
  let(:subject) { described_class.new(player, robot) }

  context "#initialize" do 
    it 'takes player and compter moves attribute' do
      rps = Rps.new('rock', 'paper')
      expect(rps).to have_attributes(:player_move => 'rock', :robot_move => 'paper')
    end


    # it 'prints fake' do
    #   p subject
    # end
  end

  context '#result' do

    let(:rps) { double }
    
    # it 'lets player win' do
    #   allow(rps).to receive(:move) { 'rock' }
    #   allow(rps).to receive(:comp_move) { 'paper' }
    #   allow(rps).to receive(:result) 
    #   expect(rps.result).to eq 'Victory!'
    # end

    # it 'lets player loose' do
    #   # expect(rps_loose.result).to eq 'Defeat!'
    # end

    # it 'evaluates draw' do
    #   expect(rps_draw.result).to eq 'Draw!'
    # end
  end
end
