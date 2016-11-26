require 'spec_helper'
require "./lib/player"

describe Logic do
  subject(:logic) {described_class.new}
  let(:player_rock) {instance_double "Player", selection: :rock }
  let(:player_paper) {instance_double "Player", selection: :paper }
  let(:player_scissors) {instance_double "Player", selection: :scissors }
  let(:computer_rock) {instance_double "Computer", selection: :rock }
  let(:computer_paper) {instance_double "Computer", selection: :paper }
  let(:computer_scissors) {instance_double "Computer", selection: :scissors }


  context "rock wins" do

  end
end
