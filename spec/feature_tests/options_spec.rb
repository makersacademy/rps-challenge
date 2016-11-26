require 'spec_helper'


describe "Options page" do
  context "When player visits the options page they" do

    before do
      sign_in
    end


    it "Can see the rock button" do
      find_button('ROCK').click
    end

    it "Can see the paper button" do
      find_button('PAPER').click
    end

    it "Can see the scissor button" do
      find_button('SCISSORS').click
    end
  end
end
