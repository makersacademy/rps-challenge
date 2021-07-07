require './app/models/item'

describe Item do

  it 'item class should have results attr' do
    ROCK = { 'paper' => false, 'scissors' => true }
    PAPER = { 'rock' => true, 'scissors' => false }
    SCISSORS = { 'rock' => false, 'paper' => true }
    rock = Item.new('rock')
    paper = Item.new('paper')
    scissors = Item.new('scissors')
    expect(rock.results).to eq(ROCK)
    expect(paper.results).to eq(PAPER)
    expect(scissors.results).to eq(SCISSORS)
  end

end
