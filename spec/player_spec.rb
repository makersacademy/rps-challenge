# frozen_string_literal: true

require 'player'

describe Player do
  subject { described_class.new('Rahul') }
  describe '#name' do
    it 'returns the player\'s name' do
      expect(subject.name).to eq('Rahul')
    end
  end
end
