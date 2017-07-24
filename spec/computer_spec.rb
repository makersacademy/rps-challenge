require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it { is_expected.to respond_to :weapon }
  it { is_expected.to respond_to :computer_choice }

  describe '#score_up' do

    it 'increases the score' do
      expect { computer.score_up }.to change { computer.score }.by(1)
    end    
  end

end
