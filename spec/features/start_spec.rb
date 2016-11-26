RSpec.feature "Starting a game", :type => :feature do

  scenario "Homepage has a title" do
    visit('/')
    expect(page).to have_text("Rock Paper Scissors")
  end


end
