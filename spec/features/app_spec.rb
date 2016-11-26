RSpec.feature "Rsp" do

  scenario "User fills register their name before playing" do
    visit('/')
    fill_in :player, with: "player"
    click_button 'Submit'
    expect( page ).to have_content("player")
  end

end
