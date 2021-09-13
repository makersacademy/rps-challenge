require 'cpu'

describe CPU do 

  it { is_expected.to respond_to(:move) }

  it "should return rock, paper or scissors" do 
    expect(subject.move).to eq('Rock').or eq('Paper').or eq('Scissors')
  end 

end 
