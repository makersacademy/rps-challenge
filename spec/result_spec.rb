require './lib/result'

RSpec.describe 'Result:' do

  subject(:result) {Result.new('✊','✌️')}

  describe '#determine' do
    it '1. should show the result of the game' do
      expect(subject.determine).to eq('You win!')
    end
  end
end
