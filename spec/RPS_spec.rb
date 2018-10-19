require 'RPS'

describe RockPaperScissors do

  describe '#random_choice' do

    it 'should return a choice' do
      expect(subject.random_choice).to eq('rock').or eq('scissors').or eq('paper')
    end

  end

end
