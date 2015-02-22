require 'player'

describe Player do
  let(:player){Player.new('Yannick')}

  

    it "can have a name" do
      expect(player.name).to eq("Yannick")
    end

end