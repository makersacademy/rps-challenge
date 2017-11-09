require 'engine'

describe Engine do

  subject(:engine) { Engine.new }
 
  context 'Draw' do
    before do
      @plays = ["rock", "paper", "scissors"]
      @play = ""
      allow_any_instance_of(Array).to receive(:sample) { @play.to_sym }
    end
    
    it 'Evaluates as a draw when both plays have the same value' do
      @plays.each do |play|
        @play = play
        expect(engine.new_play(@play)).to eq [:draw, @play.to_sym]
      end
    end
  end

  context 'Win' do
    it 'Rock beats Scissors' do
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
      expect(engine.new_play("rock")).to eq [:win, :scissors]
    end

    it 'Scissors beats Paper' do
      allow_any_instance_of(Array).to receive(:sample) { :paper }
      expect(engine.new_play("scissors")).to eq [:win, :paper]
    end

    it 'Paper beats Rock' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      expect(engine.new_play("paper")).to eq [:win, :rock]
    end
  end

  context 'Lose' do
    it 'Scissors looses to Rock' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      expect(engine.new_play("scissors")).to eq [:lose, :rock]
    end

    it 'Rock looses to Paper' do
      allow_any_instance_of(Array).to receive(:sample) { :paper }
      expect(engine.new_play("rock")).to eq [:lose, :paper]
    end

    it 'Paper looses to Scissors' do
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
      expect(engine.new_play("paper")).to eq [:lose, :scissors]
    end
  end

end
