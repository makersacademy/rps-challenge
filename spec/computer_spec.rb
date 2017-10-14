require 'computer'

describe Computer do
  let(:computer) { described_class.new }
  it 'produces a random choice' do
    expect(["rock","paper","scissors"]).to include(computer.choice)
  end
end