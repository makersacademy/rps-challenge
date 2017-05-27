require './lib/player'

describe Player do
  subject(:bert) { described_class.new("Bert") }
  subject(:ernie) {described_class.new("Ernie") }


  # it 'should return its name' do
  #   expect(bert.name).to eq 'Bert'
  # end
end
