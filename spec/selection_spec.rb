require 'selection'

RSpec.describe Selection do
  let(:selection) { double :selection }

  it 'returns the selected attribute' do
    expect(subject.user_input(selection)).to eq(selection)
  end
end