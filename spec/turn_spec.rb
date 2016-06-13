require 'turn'

describe Turn do
subject(:turn) {described_class.new(options)}
let(:options) { {"player_name" => "Faisal", "player_object" => :rock, "player2_object" => :scissors }}

describe '#player_name' do
	it 'returns player name' do
		expect(turn.player_name).to eq 'Faisal'
	end 
end 

describe '#player_object' do
	it 'returns player object' do
		expect(turn.player_object).to eq :rock
	end 
end 

describe '#player2_object' do
	it 'returns player2 object' do
		expect(turn.player2_object).to eq :scissors
	end 
end 

context 'end game' do
	subject(:win_turn) {turn}
	subject(:lose_turn) {described_class.new(lose_options)}
	subject(:draw_turn) {described_class.new(draw_options)}

	let(:lose_options) {{"player_name" => "Faisal", "player_object" => :rock, "player2_object" => :paper} }
	let(:draw_options) {{"player_name" => "Faisal", "player_object" => :rock, "player2_object" => :rock}}

	describe '#win?' do
		it 'returns true if player_object is :rock and player2_object is :scissors' do
				expect(win_turn.win?).to eq true 
		end 
	end

	describe '#lose?' do
		it 'returns true if player_object is :rock and player2_object is :paper' do
				expect(lose_turn.lose?).to eq true 
		end 
	end

	describe '#draw?' do
		it 'returns true if player_object is :rock and player2_object is :rock' do
				expect(draw_turn.draw?).to eq true 
		end 
	end


end 

end 