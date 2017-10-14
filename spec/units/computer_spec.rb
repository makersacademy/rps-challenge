require 'computer'
require 'set'

describe Computer do
  subject(:computer) { described_class.new }
  describe '#selection' do
    it 'always returns either rock, paper or scissors' do
      selections = Set.new
      10_000.times { selections << computer.selection }
      expect(selections.to_a).to match_array ['rock', 'paper', 'scissors']
    end
  end
end
