feature 'FEATURE: Keeping score' do
  scenario "the game keeps track of scores over multiple rounds" do
    srand(1)
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    click_button "scissors"
    expect(page).to have_text("Toby: 1")
  end
end
