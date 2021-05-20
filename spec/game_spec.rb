require 'game'

describe Game do

  it 'gives the result of rock paper scissors' do
    expect(subject.letsPlayRPS('paper','rock')).to eq('You win!')
    expect(subject.letsPlayRPS('scissor','rock')).to eq('You lose!')
    expect(subject.letsPlayRPS('rock','rock')).to eq("It's a draw")
  end

end
