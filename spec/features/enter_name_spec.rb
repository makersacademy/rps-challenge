require './app'

RSpec.feature "Entering a name", :type => :feature do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_text("George")
  end
end
