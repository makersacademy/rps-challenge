require 'spec_helper'
require 'round'

describe 'Round' do
    subject(:round) { Round.new(options) }
    let(:options){ {"player_1_name" => "Dave", "player_1_shape" => :rock, "computer_shape" => :rock } }
    describe "#player_1_name" do
        it 'shows the player name' do
            expect(round.player_1_name).to eq "Dave"
        end
    end
    describe "#player_1_shape" do
        it 'shows the player shape' do
            expect(round.player_1_shape).to eq :rock
        end
    end

    describe "#computer_shape" do
        it 'shows the computer shape' do
            expect(round.computer_shape).to eq :rock
        end
    end
end