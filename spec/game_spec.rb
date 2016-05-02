require 'game'

describe Game do
  subject(:game) {described_class.new(option)}
  let(:option) { {"name" => "Rich", "shape" => :rock, "computer_shape" => :scissors} }

  describe '#player name' do
    it 'returns players name' do
      expect(game.name).to eq "Rich"
  end
end

describe '#player shape' do
    it 'returns players shape' do
      expect(game.shape).to eq :rock
end
end

describe '#computer_shape' do
    it 'returns computer_shape' do
      expect(game.computer_shape).to eq :scissors
end
end


context 'ending game' do
  subject(:win_game) { game }
  describe '#win?' do
  it 'returns true when I win' do
    expect(win_game.win?).to eq true
  end
end
end

  describe '#losing' do
    let(:lose_options) { {"name" => "Rich", "shape" => :rock, "computer_shape" => :paper} }
    subject(:lose_game) { described_class.new(lose_options) }
  it 'returns false when I lose' do
    expect(lose_game.lose?).to equal true
  end
end

  describe '#draw' do
    let(:draw_options) { {"name" => "Rich", "shape" => :rock, "computer_shape" => :rock} }
    subject(:draw_game) { described_class.new(draw_options) }
  it 'returns true when I lose' do
    expect(draw_game.draw?).to equal true
  end
end
end
