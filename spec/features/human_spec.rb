require 'human'
require 'spec_helper'

describe Human do

subject(:human) { described_class.new('A') }

  describe '#name' do
    it 'returns player name' do
      expect(human.name).to eq 'A'
    end
  end

end
