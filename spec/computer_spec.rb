require 'spec_helper'
require 'computer'

describe Computer do
  subject { described_class.new }
  choices = [:rock, :paper, :scissors]

  it "can make a choice" do
    expect(choices).to include subject.weapon
  end
end
