require 'player'

describe Player do 

  # it{ is_expected.to respond_to :chosen }  
  it 'can make a choice' do
    expect(subject).to respond_to :choice
  end

  it 'can pick rock' do
    subject.choice("rock")
    expect(subject.picked).to eq "rock"
  end

end
