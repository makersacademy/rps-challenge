require 'user'

RSpec.describe User do
  let(:subject) { described_class.new("Player1") }
  let(:selection) { double :selection }

  it 'returns the selected attribute' do
    expect(subject.get_input(selection)).to eq(selection)
  end

  # it 'returns the score' do 
  #   expect(subject.score).to eq(10)
  # end

  # it 'return a score changed by 1' do
  #   expect { subject.loose }.to change { subject.score }.by(-1)
  # end 
end
