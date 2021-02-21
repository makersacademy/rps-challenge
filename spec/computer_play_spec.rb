require 'computer_play'

describe Play do
  subject = Play.new

  describe '#draw' do
  it 'expect play to respond to method' do
  expect(subject).to respond_to(:draw)
  end
  it 'returns an instance of rock, paper or scissors' do
  expect(subject.draw). to be_kind_of(String)
  end
end
end
