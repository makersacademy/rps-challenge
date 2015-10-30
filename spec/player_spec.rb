require 'player'

describe Player do
  
  subject(:player) { described_class.new(player_name)}
  let(:player_name) {'Dave'}

  describe 'initialization' do
    it {is_expected.to respond_to(:name)}
  end

end