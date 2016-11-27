require 'spec_helper'
require 'game'
require 'player'
require 'machine'

describe "Feature View Test" do
  let(:player) { Player.new("KillBill") }
  let(:machine) { Machine.new }
  let(:game) { Game.new(player,machine) }

  before do

    sign_in_and_play
  end

  describe "Sign in" do
    it "should redirect to /play" do
      expect(page.current_path).to eq "/play"
    end
  end

  describe "Choose weapon" do
    before do
      visit "/play"
    end

  end
  
end
