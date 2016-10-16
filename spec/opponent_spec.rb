require 'opponent'

describe Opponent do
  let(:options) {[:rock, :paper, :scissors]}
  subject(:opponent) {described_class.new(options)}

  it 'chooses a sample from the options' do
    expect(options).to include opponent.make_choice
  end
end 
