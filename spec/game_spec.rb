require 'game'

describe Game do

  let(:goku) {double :goku, hand: :rock}
  let(:krillin) {double :krillin, hand: :spock}

  it 'should return true if human is winner' do
    vegeta = double :computer, hand: :scissors
    expect(subject.winner?(goku, vegeta)).to be true
    expect(subject.winner?(krillin, vegeta)).to be true
  end

  it 'should return true if it\'s a draw' do
    vegeta = double :computer, hand: :rock
    expect(subject.draw?(goku, vegeta)).to be true
  end

  it 'should return true if human loses' do
    vegeta = double :computer, hand: :paper
    expect(subject.loser?(goku, vegeta)).to be true
    expect(subject.loser?(krillin, vegeta)).to be true
  end
end
