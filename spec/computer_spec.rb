require 'computer'

describe Computer do

  let(:computer) {Computer.new}

  it 'can choose a shape' do
    expect(['rock', 'paper', 'scissors']).to include(computer.shape_choice)
  end
  
end
  
