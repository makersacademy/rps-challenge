require 'opponent'

describe Opponent do
	subject(:opponent) { described_class.new }


describe '#choice' do
  it 'returns random choice' do
  	expect(Opponent::SHAPES).to include opponent.choice
  end 
 end
end 