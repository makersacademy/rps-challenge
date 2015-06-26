require 'player'

describe Player do

    it { is_expected.to respond_to :name }

    # it 'can select rock, paper or scissors' do
    #   expect(subject).to respond_to(:select).with(1).argument
    # end

end
