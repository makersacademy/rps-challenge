require 'game'

describe Game do
  let(:player) { double("player") } 
  let(:subject) { Game.new(player) }  

  it 'takes in one player as default' do
    expect(subject.player).to eq player
  end

  it 'takes two players if needed' do
    player_2 = double("player_2")
    game = Game.new(player, player_2)
    expect(game.player_2).to eq player_2
  end

  it 'can generate random result' do
    allow(subject.options).to receive(:sample).and_return("scissors")
    expect(subject.generate_random).to eq "scissors"
  end

  it 'can declare winner in single player mode' do
    allow(subject.options).to receive(:sample).and_return("scissors")
    subject.generate_random
    allow(player).to receive(:choice).and_return("rock")
    expect(subject.winner).to eq "Yay! You win!"
  end

  it 'can declare winner in multi player mode' do
    player_2 = double("player_2")
    game = Game.new(player, player_2)
    allow(player).to receive(:choice).and_return("rock")
    allow(player_2).to receive(:choice).and_return("rock")
    expect(game.compare).to eq "Tie!"
  end
end
