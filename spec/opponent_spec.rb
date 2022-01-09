require 'opponent'

describe Opponent do
  options = ["Rock", "Paper", "Scissors"]
  it 'returns its random turn choice' do 
    subject.random_choice
    expect(options).to include subject.random_choice
  end
end