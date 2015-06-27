require "player"

describe Player do

let(:random_move_creator){double :random_move_creator}
let(:comparator) {double :comparator}

let(:player) { Player.new comparator, random_move_creator}

  describe "#play" do
    
    let(:option_chosen) {double :option_chosen}
    #why i dont need to define let(:comparator) 
    #{double :comparator, option choosen}

    it "sends the option chosen to the comparator" do
      expect(comparator).to receive(:compair).with(option_chosen, player)
      player.play option_chosen
    end

  end
#shall i do context¿// .and_return false
  describe "#win?" do
    it "returns the result" do
      expect(comparator).to receive(:veredict)
      player.win?
    end
  end

end