require 'game'

describe Game do
  
  let(:player) { double :player }
  subject(:game) { described_class.new(player)}

  describe 'initialization' do
    it {is_expected.to respond_to(:player)}
  end

end