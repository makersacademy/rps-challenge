require 'RPS'

describe RockPaperScissors do

  describe '#random_choice' do

    it 'should return a choice' do
      expect(subject.random_choice).to eq('rock').or eq('scissors').or eq('paper')
    end

  end

  describe '#create_choice' do

    it 'should return a choice from random_choice' do
      expect(subject.create_choice).to eq('rock').or eq('scissors').or eq('paper')
    end

    it 'should return a choice passed as argument' do
      expect(subject.create_choice('rock')).to eq('rock')
    end

  end

end
