require 'spec_helper'

describe "Feature View Test" do
  before do
      visit "/"

      fill_in("player_name",with: "Harley Quinn")
      click_button "Let's go!"
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
