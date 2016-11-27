require 'spec_helper'

describe "Sign in" do
  before do
      sign_in_and_play
  end

  it "should redirect to /play" do
    expect(page.current_path).to eq "/play"
  end

  it "should display player's name" do
    expect(page).to have_text "Harley Quinn"
  end

end
