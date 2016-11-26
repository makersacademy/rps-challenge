RSpec.feature "Attack Players", :type => :feature do

  scenario "start" do
    visit('/')
    expect(page).to have_text("RPS")
  end


end
