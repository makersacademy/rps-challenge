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

  context 'end game' do
  	subject(:win_game) { described_class.new(options)}
  	subject(:lose_game) { described_class.new(lose_options) }
  	subject(:draw_game) { described_class.new(draw_options) }
    let(:lose_options) { {"player_name" => "Abdulla", "player_choice" => :rock, "opponent_choice" => :paper} }
  	let(:draw_options) { {"player_name" => "Abdulla", "player_choice" => :rock, "opponent_choice" => :rock} }
  
  describe '#win?' do
  	it 'returns true if player_choice is :rock and opponent_choice is :scissors' do
  	   expect(win_game.win?).to eq true
  	end
   end

   describe '#lose?' do
    it 'returns true if player_choice is :rock and opponent_choice is :paper' do
  	   expect(lose_game.lose?).to eq true
  	end
   end

  describe '#draw?' do
    it 'returns true if player_choice is :rock and opponent_choice is :rock' do
  	   expect(draw_game.draw?).to eq true
  	end
   end
   

  end 
end