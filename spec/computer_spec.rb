require './lib/computer.rb'

describe Computer do
  it 'responds to computer_move' do
    expect(subject).to respond_to(:computer_move)
  end

  it 'randomly selects the move scissors' do
      srand(4)
      expect(subject.computer_move).to eq('scissors')
    end

    it 'randomly selects the move paper' do
      rand(3)
      expect(subject.computer_move).to eq('paper')
    end

    it 'randomly selects the move rock' do
      rand(2)
      expect(subject.computer_move).to eq('rock')
    end
end