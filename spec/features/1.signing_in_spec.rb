require './controller'

RSpec.feature "Signing in to play", :type => :feature do
  scenario "Name given by user appears on the game screen" do
    start
    expect(page).to have_text("Pea")
  end
end
