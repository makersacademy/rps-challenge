require 'spec_helper'

describe "Sign in" do

  it "should show the welcome message" do
    visit '/'
    expect(page).to have_text "Welcome to Rock, Paper, and Scissors Game!"
  end
  it "should sign in and redirect to /play1" do
    sign_in
    expect(page.current_path).to eq "/play1"
  end

end
