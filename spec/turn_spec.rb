require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Vytis", "player_shape" => :rock, "computer_shape" => :rock} }

  describe "#player_name" do
  	it "return player name" do
  		expect(turn.player_name).to eq "Vytis"
  	end	
  end

  describe "#player_shape" do
  	it "return player shape" do
  		expect(turn.player_shape).to eq :rock
  	end	
  end

  describe "#computer_shape" do
  	it "return computer shape" do
  		expect(turn.computer_shape).to eq :rock
  	end	
  end    	
end