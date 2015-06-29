require 'rps_game'

describe RockPaperScissors do

  it 'should only accept valid input' do
    expect { RockPaperScissors.new 'banana' }.to raise_error "Input must be rock, paper or scissors!"
  end

  it 'should win if choice is paper and opponent has rock' do
    new_game = RockPaperScissors.new 'paper'
    allow(new_game).to receive(:opponents_selection) {'rock'}
    expect(new_game.result).to eq "You win!! :)"
  end

  it 'should draw if player choice and opponent choice is the same' do
    new_game = RockPaperScissors.new 'paper'
    allow(new_game).to receive(:opponents_selection) {'paper'}
    expect(new_game.result).to eq "It's a draw"
  end

  it 'should lose if choice is paper and opponent has scissors' do
    new_game = RockPaperScissors.new 'paper'
    allow(new_game).to receive(:opponents_selection) {'scissors'}
    expect(new_game.result).to eq "You lose! :("
  end

end