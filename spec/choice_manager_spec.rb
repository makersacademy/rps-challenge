require 'choice_manager'

describe ChoiceManager do

	subject(:choice_manager){ described_class.new(player) }
	let(:player){ double(:player) }

	context '#initialize' do
		it 'stores a player, who can be returned' do
			expect(choice_manager.player).to eq player
		end
	end

end