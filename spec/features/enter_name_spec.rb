feature 'Enter player name' do
  scenario "player can enter their name and see it" do
    visit('/')
    fill_in("player_name", with: "Rubber Duck")
    click_button "Submit name"
    expect(page).to have_content("Welcome Rubber Duck!")
  end
end
