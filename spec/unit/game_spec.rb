require 'game'

describe ComputerGame do

  it 'gives a random choice of rock, paper, scissor' do
    select = double('ComputerGame', :choice => 'rock')
    subject.choice
    expect(select.choice).to eq('rock')
  end

end