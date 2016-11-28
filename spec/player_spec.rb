require 'player'


describe Player do

  subject( :player ){ described_class.new( player_name ) }
  let( :player_name ){ double :name }

  context "#name" do
    it { is_expected.to respond_to :name }

    it "should return player's name when accessed" do
      expect( player.name ).to eq player_name
    end
  end

  context "#choose" do
    it "should return player's choice when accessed" do
      choice = "rock"
      expect( player.choose( choice ) ).to eq player.choice
    end
  end

end
