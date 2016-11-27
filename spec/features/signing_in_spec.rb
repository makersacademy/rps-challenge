require './controller'

RSpec.feature "Signing in to play", :type => :feature do
  scenario "Name given by user appears on the game screen" do
    visit '/'
    fill_in "player1_name", :with => "Pea"
    click_button "Save"
    expect(page).to have_text("Pea")
  end
end
