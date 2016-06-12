require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Luke", "player_weapon" => :rock, "computer_weapon" => :rock} }

  describe '#player_name' do
  	it 'returns player name' do
  	  expect(game.player_name).to eq 'Luke'
  	end
  end

  describe '#player_weapon' do
  	it 'returns player name' do
  	  expect(game.player_weapon).to eq :rock
  	end
  end

  describe '#computer_weapon' do
  	it 'returns player name' do
  	  expect(game.computer_weapon).to eq :rock
  	end
  end

end