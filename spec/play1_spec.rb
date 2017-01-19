require 'spec_helper'

describe "play1" do
  before do
    sign_in
  end
    it "should redirect to /play1 after signing in" do
      expect(page.current_path).to eq "/play1"
    end
    it "should display player 1's name" do
      expect(page).to have_text "Harley Quinn"
    end
    it "should display player 2's name" do
      expect(page).to have_text "KillBill"
    end

    it "should have button 'Rock'" do
      expect(page).to have_button("Rock")
    end

    it "should have button 'Scissors'" do
      expect(page).to have_button("Scissors")
    end

    it "should have button 'Paper'" do
      expect(page).to have_button("Paper")
    end


end
