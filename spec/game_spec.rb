require 'game'

describe Game do
  subject {Game.new}
  it 'outputs randomly selected response by computer' do
    array_outputs = ['ROCK', 'SCISSORS', 'PAPER']
    srand(333)
    index = rand(3)
    sampled_response = array_outputs[index]
    response_random = subject.random_response
    expect(response_random).to eq sampled_response
  end
  it 'outputs randomly a different selected response by computer' do
    array_outputs = ['ROCK', 'SCISSORS', 'PAPER']
    srand(339)
    index = rand(3)
    sampled_response = array_outputs[index]
    response_random = subject.random_response
    sampled_response    
    expect(response_random).to eq sampled_response
  end
end
