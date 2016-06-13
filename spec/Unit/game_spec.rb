require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Luke", "player_weapon" => :rock, "computer_weapon" => :scissors} }

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
  	  expect(game.computer_weapon).to eq :scissors
  	end
  end

  context 'results' do
  	subject(:win_game) { game }
  	subject(:lose_game) { described_class.new(lose_option) }
  	subject(:draw_game) { described_class.new(draw_option) }

  	let(:lose_option) { {"player_name" => "Luke", "player_weapon" => :rock, "computer_weapon" => :paper} }
  	let(:draw_option) { {"player_name" => "Luke", "player_weapon" => :rock, "computer_weapon" => :rock} }

  	describe '#win?' do
  	  it 'returns true if the player chooses rock and the computer chooses scissors' do
  	  	expect(win_game.win?).to eq true
  	  end
  	end

  	describe '#lose?' do
  	  it 'returns true if the player chooses rock and the computer chooses paper' do
  	  	expect(lose_game.lose?).to eq true
  	  end
  	end

  	describe '#draw?' do
  	  it 'returns true if the player chooses rock and the computer chooses rock' do
  	  	expect(draw_game.draw?).to eq true
  	  end
  	end
  end

end