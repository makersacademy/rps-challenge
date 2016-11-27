require 'spec_helper'


describe "Options page" do
  context "When player visits the options page they can see the" do

    before do
      sign_in
    end


    it "ROCK button" do
      find_button('ROCK').click
    end

    it "PAPER button" do
      find_button('PAPER').click
    end

    it "SCISSOR button" do
      find_button('SCISSORS').click
    end
  end

   context "A player is redirected to the results page when they click the" do
     before do
       sign_in
     end

     it "ROCK button" do
       click_button("ROCK")
       expect(page.current_path).to eq("/results")
     end

     it "PAPER button" do
       click_button("PAPER")
       expect(page.current_path).to eq("/results")
     end

     it "SCISSORS button" do
       click_button("SCISSORS")
       expect(page.current_path).to eq("/results")
     end
   end
end
