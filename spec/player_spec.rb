require 'player'

describe Player do

  let(:player) {Player.new("John")}

  it 'the marketeer should be able to enter their name before the game' do
    expect(player.name).to be=="John"
  end

  it 'the marketeer can choose one option' do
    player.select1("paper")
    expect(player.choice).to be==:paper
  end

  it 'the marketeer can choose from the list' do
    expect{player.select1 " "}.to raise_error "Make your choice: rock, paper or scissors."
  end

end
