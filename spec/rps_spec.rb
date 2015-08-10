require 'rps'

describe Game do

  it 'responds to play method' do
    expect(subject).to respond_to(:play).with(1).argument
  end

  it 'should fail if an invalid choice is given' do
    expect { subject.play :invalid_choice }.to raise_error "Not a valid option"
  end

  it 'should allow for a draw' do
    allow(subject).to receive(:opponent_weapon) { :rock }
    expect(subject.play(:rock)).to eq "It's a draw!"
  end

  it 'should allow for a win' do
    allow(subject).to receive(:opponent_weapon) { :scissors }
    expect(subject.play(:rock)).to eq "You win!"
  end

  it 'should allow for a loss' do
    allow(subject).to receive(:opponent_weapon) { :paper }
    expect(subject.play(:rock)).to eq "You lose!"
  end
end
