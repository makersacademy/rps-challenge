require 'cpu_player'

describe Cpu_player do
  it 'must respond to cpu_choice' do
    expect(subject).to respond_to(:cpu_choice)
  end

  it 'must be able to select rock as an option' do
    srand(1)
    expect(subject.cpu_choice).to eq "Rock"
  end

  it 'must be able to select paper as an option' do
    srand(3)
    expect(subject.cpu_choice).to eq "Paper"
  end

  it 'must be able to select scissors as an option' do
    srand(2)
    expect(subject.cpu_choice).to eq "Scissors"
  end
end
