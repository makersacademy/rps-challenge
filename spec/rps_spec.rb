require 'rps'

describe RockPaperScissors do
  let(:subject) { RockPaperScissors.new("Test") }

  it 'should set default scores to 0' do
    expect(subject.player_score).to eq(0)
    expect(subject.computer_score).to eq(0)
  end

  it 'should update score correctly' do
    expect { subject.action('scissors', 'paper') }.to change { subject.player_score }.from(0).to(1)
  end
end
