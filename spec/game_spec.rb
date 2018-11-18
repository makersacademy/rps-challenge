require 'game'
describe Game do
	let(:name_player) {double(:name_player)}
	let(:computer_weapon) {double(:computer_weapon)}
	let(:player_weapon) {double(:weapon)}
	subject(:game) { described_class.new(name_player) }
	describe '#Initialize' do
		it 'Initialize the game player and his weapon' do
			expect(game.name_player).to eq name_player
		end
	end

	describe '#player_weapon' do
		it 'Choose a weapon' do
			expect(game.player_weapons(:rock)).to eq :rock
		end
	end

	describe '#Computer_weapons' do
		it 'Get random RSP for computer' do
			expect(game.computer_weapons).to eq(:rock).or eq(:paper).or eq(:scissors)
		end
	end

	describe '#Getting a winner' do
		it 'Selecting a winner through a random selection of weapon' do
			game.player_weapon = :rock
			game.computer_weapons
			expect(game.result).to eq(:lose).or eq(:win).or eq(:tie)
		end
	end
end