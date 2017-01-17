require './app'

RSpec.feature "player name record", :type => :feature do

  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_content("David Miller vs Computer")
  end
end
