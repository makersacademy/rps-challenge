require './app/sign_game'

describe SignGame do

  let(:rock) { double :rock, versus: 'rock loses', result_against_paper: 'rock loses', result_against_scissors: 'rock wins', result_against_rock: 'rock draws'}
  let(:paper) { double :paper }

  it 'knows if it is playing best of three' do

  end

  it 'knows when there is a winner' do

  end

  describe '#choose' do
    xit 'records a loss when user chooses rock against paper' do
      expect(rock).to receive(:versus).with(rock).and_return('rock loses')
      subject.choose :rock
    end

    xit 'records a win when user chooses paper against rock' do
      result = subject.choose :paper
      expect(result).to eq 'paper wins'
    end
  end

  describe '#random_choice' do
    it 'returns a random choice' do
      # how do we stub randomness again?
    end
  end

end
