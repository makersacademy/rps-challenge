require_relative 'spec_helper'
require 'player'

describe Player do
  subject {described_class.new("Michael")}

  it "has a name" do
    expect(subject.name).to eq "Michael"
  end

  it "can set a weapon" do
    subject.set_weapon = :rock
    expect(subject.weapon).to eq :rock
  end

end
