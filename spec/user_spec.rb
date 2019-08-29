require 'user'

RSpec.describe User do
  let(:subject) { described_class.new("Player1") }
  let(:selection) { double :selection }

  it 'returns the selected attribute' do
    expect(subject.get_input(selection)).to eq(selection)
  end

  it 'start wit a score eq 10' do
    expect(subject.score).to eq(10)
  end 

  it 'reduce the score by 1' do
    subject.calc_score
    expect(subject.score).to eq(9)
  end
end
