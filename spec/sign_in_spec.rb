require 'spec_helper'

describe "Sign in" do
  before do
      sign_in
  end

  it "should redirect to /play1" do
    expect(page.current_path).to eq "/play1"
  end

  it "should display player 1's name" do
    expect(page).to have_text "Harley Quinn"
  end
  it "should display player 2's name" do
    expect(page).to have_text "KillBill"
  end

end
