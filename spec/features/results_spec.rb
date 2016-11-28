require 'spec_helper'

feature "Show results" do

  before do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
  end

  scenario "God's choice is shown" do
    srand(2)
    click_button "Paper"
    expect(page).to have_content "God's choice is rock"
  end

end
