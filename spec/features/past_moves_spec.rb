feature "Show All Past Moves" do
  before(:each) do
  @comp_move = double('comp_move')
  allow(@comp_move).to receive()
  end
  scenario "A List Of Past Moves Is Shown On Results Page" do 
    web_play_rock

    expect(page).to have_content("You Picked Rock")
  end
end