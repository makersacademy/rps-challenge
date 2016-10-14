require_relative 'spec_helper'
require 'game'

describe Game do
  let(:player) { double(:player, :name => "Bukowski") }
  subject { described_class.new(player)}

  it "should have a player" do
    expect(subject.player).to eq player
  end
end
