require 'user'

RSpec.describe User do
  let(:subject) { described_class.new("Player1") }
  let(:selection) { double :selection }

  it 'returns the selected attribute' do
    expect(subject.get_input(selection)).to eq(selection)
  end
end
