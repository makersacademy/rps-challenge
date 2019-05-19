require 'game'


describe Game do

  let(:play) { double(:play, move: :rock)}
  subject { described_class.new(:rock) }

  it 'will randomly choose rock, paper or scissors' do
    allow(play).to receive(:number).and_return(10)
    expect([1, 2, 3]).to receive(:sample).and_return(1)
    expect(subject.random).to eq(11)
  end
end
