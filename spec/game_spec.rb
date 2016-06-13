require 'game'

describe Game do
	subject(:game) { described_class.new(options) }
	let(:options) { {"player_name" => "Abdulla", "player_choice" => :rock, "opponent_choice" => :scissors} }

describe "#player_name" do
	it 'returns player name' do
	expect(game.player_name).to eq "Abdulla"
	end
  end
 describe "#player_choice" do
	it 'returns player choice' do
	expect(game.player_choice).to eq :rock
	end
  end
 describe "#opponent_choice" do
	it 'returns opponents choice' do
	expect(game.opponent_choice).to eq :scissors
	end
  end

  context 'win/end game' do
  	describe '#win?' do
  	 it 'returns true if player_choice is :rock and opponent_choice is :scissors' do
  	   expect(game.win?).to eq true
  	end
   end
  end 
end