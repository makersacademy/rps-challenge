require 'game'

describe Game do
  subject(:game) { Game.new(options) }
  let(:options) do [
      :rock,
      :paper,
      :scissors
  ]
  end

  it 'initializes an array of options as default' do
    expect(options).to eq([:rock, :paper, :scissors])
  end
end