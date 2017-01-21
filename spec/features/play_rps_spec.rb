# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "Play RPC" do
  scenario "I would like to play RPS" do
    visit('/')
    fill_in :player1_name, with: "Adrian"
    click_button 'Submit'
    expect(page).to have_content "Player 1: Adrian"
  end
end
