require 'rps_logic'
describe RPSLogic do
  subject(:logic) { described_class.new }
  it 'it values rock over scissors' do
    expect(logic.check("Rock", "Scissors")).to eq 1
  end
  it 'it values scissors over rock' do
    expect(logic.check('Scissors', 'Rock')).to eq 2
  end
  it 'it returns a draw when both are Rock' do
    expect(logic.check('Rock', 'Rock')).to eq 0
  end
end
