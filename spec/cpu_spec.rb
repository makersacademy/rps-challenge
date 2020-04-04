require 'cpu'

describe CPU do

  it 'initializes with a weapon selected' do
    expect(subject).to respond_to :weapon  
  end

  it 'weapon is random' do
    srand(3)
    expect(subject.weapon.type).to eq "Scissors" 
  end

end
