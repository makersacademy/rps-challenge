# frozen_string_literal: true

require 'game'

describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  describe '::create' do
    it 'returns a newly created game instance' do
      expect(described_class.create(player_1, player_2)).to be_an_instance_of(described_class)
    end
  end

  describe '::instance' do
    context 'a game has been created' do
      it 'returns a game instance' do
        expect(described_class.instance).to be_an_instance_of(described_class)
      end
    end

    context 'a game has not been created' do
      it 'returns nil'
    end
  end
end
