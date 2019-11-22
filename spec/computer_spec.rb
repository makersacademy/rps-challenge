require './lib/computer'

describe Computer do

  it { should be_an_instance_of(Computer) }

  it "should return a random move" do
    allow(Kernel).to receive(:rand).and_return(1)
    subject.computer_move
    expect(subject.move).to eq :rock
  end

end
