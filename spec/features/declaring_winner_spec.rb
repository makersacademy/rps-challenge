feature 'FEATURE: Declaring a winner' do
  scenario "The game informs which player won once a selection has been made" do
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    click_button "rock"
    expect(page).to have_text("wins the point")
  end
end
