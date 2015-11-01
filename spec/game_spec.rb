require 'game'

describe Game do
  before(:each) do
    (subject).to receive(:picker).and_return('rock')
  end

  it 'allows input of a choice' do
    subject.choice('paper')
    expect(subject.user_choice).to eq("paper")
  end

  it 'increments the turn' do
    expect {subject.battle}.to change{subject.turn}.by(1)
  end


end
