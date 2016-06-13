require 'game'

describe Game do
	subject(:game) { described_class.new(options) }
	let(:options) { {"player_name" => "Abdulla", "player_choice" => :rock, "opponent_choice" => :rock} }

describe "#player_name" do
	it 'returns player name' do
	expect(game.player_name).to eq "Abdulla"
	end
  end
 describe "#player_choice" do
	it 'returns player choice' do
	expect(game.player_choice.to_s.capitalize).to eq "Rock"
	end
  end
 describe "#opponent_choice" do
	it 'returns opponents choice' do
	expect(game.opponent_choice.to_s.capitalize).to eq "Rock"
	end
  end
end