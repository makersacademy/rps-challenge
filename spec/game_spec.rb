require 'game'

describe Game do
  let(:human) {double(:human, :name => "Naz", :choice => "yellow-throat")}
  let(:human2) {double(:human2, :name => "Naz", :choice => "orange-throat")}
  let(:comp) {double(:comp, :name => "comp", :choice => "orange-throat")}
  let(:comp2) {double(:comp2, :name => "comp", :choice => "blue-throat")}
  subject(:game) {described_class.new(human, comp)}

  it 'initializes game with a human' do
    expect(game.human).to eq human
  end

  it 'human wins when they select yellow and comp selects orange' do
    expect(game.calculate_winner).to eq human.name
  end

  it 'comp wins when they select blue and human selects yellow' do
    game2 = Game.new(human, comp2)
    expect(game2.calculate_winner).to eq comp2.name
  end

  it 'returns draw when selections are the same' do
    game3 = Game.new(human2, comp)
    expect(game3.calculate_winner).to eq "Draw"
  end
   
end
