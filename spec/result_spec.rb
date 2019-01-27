require './lib/result'

RSpec.describe 'Result:' do
  it 'should determine the result of the game' do
    expect(subject.determine).to eq('You win!')
  end
end
