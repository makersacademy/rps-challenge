require './lib/game'

describe Game do 

  subject(:game) { Game.new(p1) }
  let(:p1) { double :player }
  
  # p1 = instance_double("p1", :turn => "rock")

  it 'should accept player one on initialize' do
    expect(subject.player_1).to eq(p1)
  end 

  describe "#turn" do 
      p1 = "paper"

    it 'paper should beat rock' do
      cpu = "rock"
      expect(subject.turn(p1, cpu)).to eq "You win!"
    end

    it 'paper should lose to scissors' do
      cpu = "scissors"   
      expect(subject.turn(p1)).to eq "You lose!"
    end

    it 'two of the same should draw' do
      cpu = "paper"
      expect(subject.turn(p1, cpu)).to eq "Draw!"
    end

  end 

end
