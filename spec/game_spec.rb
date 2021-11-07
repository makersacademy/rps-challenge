require_relative '../lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:computer_selection){ double('computer_selection', selection=>'Paper') }


  describe '#computer_selection' do
    it 'randomly selects one of the move options' do
    expect(game.computer_selection).not_to be nil
    end
  end
end