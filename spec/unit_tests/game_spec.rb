require 'game'

describe Game do
  let(:player) { double :Player } 
  before do 
    Game.create(player)
  end 

  it "remembers player" do
    instance = Game.instance
    expect(instance.player1).to eq player
  end

  it "allows to choose a weapon" do 
    expect(player).to receive(:equip)
    Game.choose_weapon("rock")
  end

  describe "#duel" do 
    context "when player selects rock" do
      before do
        allow(player).to receive(:weapon).and_return("rock")
      end
      
      it "rock smashes scissors" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
        expect(Game.duel).to eq :win
      end 

      it "rock is covered by paper" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('paper')
        expect(Game.duel).to eq :lost
      end
    end

    context "when player selects paper" do
      before do
        allow(player).to receive(:weapon).and_return("paper")
      end
      
      it "paper covers rock" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        expect(Game.duel).to eq :win
      end 

      it "paper is cut by scissors" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
        expect(Game.duel).to eq :lost
      end
    end

    context "when player selects scissors" do
      before do
        allow(player).to receive(:weapon).and_return("scissors")
      end
      
      it "scissors cuts paper" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('paper')
        expect(Game.duel).to eq :win
      end 

      it "scissors get smashed by rock" do 
        allow_any_instance_of(Array).to receive(:sample).and_return('rock')
        expect(Game.duel).to eq :lost
      end
    end

    context "when both have the same weapon" do
      it "returns a draw" do 
        allow(player).to receive(:weapon).and_return("scissors")
        allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
        expect(Game.duel).to eq :draw
      end
    end
  end 
end 
