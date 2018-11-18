require 'game'
describe Game do
	let(:name_player) {double(:name_player)}
	let(:player_weapon) {double(:weapon)}
	subject(:game) { described_class.new(name_player, player_weapon) }
	describe '#Initialize' do
		it 'Initialize the game player and his weapon' do
			expect(game.name_player).to eq name_player
			expect(game.player_weapon).to eq player_weapon
		end
	end

	describe '#Computer_weapons' do
		it 'Get random RSP for computer' do
			expect(game.computer_weapons).to eq(:rock).or eq(:paper).or eq(:scissors)
		end
	end
end