require 'spec_helper'

describe "Sign in" do
  before do
      visit "/"

      fill_in("player_name",with: "Harley Quinn")
      click_button "Let's go!"
  end

  it "should redirect to /play" do
    expect(page.current_path).to eq "/play"
  end

  it "should display player's name" do
    expect(page).to have_text "Harley Quinn"
  end

end
