require 'game_type'

describe GameType do

  it 'can add scenario' do
    subject.add_scenario :rock, :scissors
    expect(subject.game).to include(:rock => :scissors)
  end

  it 'cannot add the same thing twice' do
    subject.add_scenario :rock, :scissors
    message = "It is already added"
    expect { subject.add_scenario :rock, :scissors }.to raise_error message
  end

end
