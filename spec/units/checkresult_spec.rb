require './lib/result'

RSpec.describe 'Check Result:' do

  subject(:result) { CheckResult.new('✊', '✌️') }

  describe '#determine' do
    it '1. should show the result of the game' do
      expect(subject.determine).to eq('You win!')
    end
  end
end
