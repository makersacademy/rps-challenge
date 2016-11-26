require 'player'


describe Player do

  subject( :player ){ described_class.new( player_name ) }
  let( :player_name ){ double :name }


  it { is_expected.to respond_to :name }

  it "should return player's name when accessed" do
    expect( player.name ).to eq player_name
  end

end
