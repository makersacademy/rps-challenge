feature 'FEATURE: Entering names' do
  scenario "a player can enter their name and the game will store it" do
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    expect(page).to have_text("Toby vs. the computer")
  end
end
