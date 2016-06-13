require 'turn'

describe Turn do
subject(:turn) {described_class.new(options)}
let(:options) { {"player_name" => "Faisal", "player_object" => :rock, "player2_object" => :rock }}

describe '#player_name' do
	it 'returns player name' do
		expect(turn.player_name).to eq 'Faisal'
	end 
end 

end 