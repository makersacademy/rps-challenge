require 'computer'

describe Computer do

  let(:computer) {Computer.new}

  it 'chooses a random shape' do
    expect(['rock', 'paper', 'scissors']).to include(computer.shape_choice)
  end
  
end
  
