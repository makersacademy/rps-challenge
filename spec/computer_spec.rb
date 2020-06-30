require './lib/computer.rb'

describe Computer do
  it 'responds to computer_move' do
    expect(subject).to respond_to(:computer_move)
  end

  it 'randomly selects the move scissors' do
    srand(4)
    expect(subject.computer_move).to eq('scissors')
  end
end
