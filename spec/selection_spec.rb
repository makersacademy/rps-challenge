require 'user'

RSpec.describe User do
  let(:selection) { double :selection }

  it 'returns the selected attribute' do
    expect(subject.input(selection)).to eq(selection)
  end
end