require 'rps_droid'
describe RpsDroid do
  it 'picks a random number between' do
    expect(subject.make_move).to be_between(0, 2)
  end
end
