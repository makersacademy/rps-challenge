require 'computer'

describe Computer do
  describe '#pick' do
    it 'should pick rock, paper or scissors' do
      expect(['rock', 'paper', 'scissors'].include?(subject.pick)).to eq(true)
    end

    it 'should store the result in a variable' do
      subject.pick
      expect(['rock', 'paper', 'scissors'].include?(subject.result)).to eq(true)
    end
  end
end
