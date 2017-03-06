require 'spec_helper'
#require 'computer'
require 'player'

describe Computer do
  subject(:computer) { described_class.new }

  context 'Selection process' do
    it 'gives an option to select rock, paper or scissors' do
      srand(2)
      expect(computer.selection).to eq 'Rock'
      expect(computer.selection).to eq 'Paper'
    end
  end
end
