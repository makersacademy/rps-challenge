require 'weapon'

describe Weapon do
    it 'has rocks, papers and scissors available for use' do
    expect(Weapon).to respond_to :rock
    expect(Weapon).to respond_to :paper
    expect(Weapon).to respond_to :scissors
    end

  end