require 'spec_helper'

describe 'result' do
  before do
    sign_in
    click_button "Rock"
    click_button "Scissors"
  end

  it "should show both players' names" do
    expect(page).to have_content("Harley Quinn Vs KillBill")
  end
  it "should show weapons of both players" do
    expect(page).to have_content("Rock Vs Scissors")
  end
  it "should show the winner" do
    expect(page).to have_content("Harley Quinn is the winner!")
  end

end
