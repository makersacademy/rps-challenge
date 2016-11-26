require 'spec_helper.rb'
require_relative 'web_helper.rb'

describe "Entering Names" do

  context "When players are on the index page I" do
      it "expect page to have a form called human_player1" do
         visit('/')
         expect(page).to have_field("human_player1")
      end

      it "expect page to have a form called human_player1" do
         visit('/')
         expect(page).to have_field("computer")
      end
  end

  context "When players enter their names" do
         before do
           sign_in
         end

    it "They are redirected to the '/game' page" do
      expect(page.current_path).to eq('/game')
    end
  end
end
