# frozen_string_literal: true

require 'game'

describe Game do
  subject(:game) { described_class.new(one, two) }
  let(:one) { double :one }
  let(:two) { double :two }

  describe '#fight' do
    it 'compares weapons' do
      expect(game).to receive_message_chain(:weapons, :drawn)
      game.fight
    end
  end
end
