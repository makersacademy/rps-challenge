require 'spec_helper'
require 'computer'

describe Computer do

  WEAPONS = [:rock, :paper, :scissors]

  # before(:each) do
  #   allow_any_instance_of(WEAPONS).to receive(:sample).and_return(:rock)
  # end


  xit 'should be randomly assigned a weapon' do
    subject.weapon_assignment
    expect(subject.weapon).to eq :rock
  end

end
