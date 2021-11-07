require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#computer_selection' do
    it 'randomly selects one of the move options' do
    expect(subject.computer_selection).to eq ("Paper")
    end
  end


end