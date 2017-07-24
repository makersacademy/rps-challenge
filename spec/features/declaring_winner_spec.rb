feature 'FEATURE: Declaring a winner' do
  scenario "The game informs which player won once a selection has been made" do
    srand(1)
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    click_button "scissors"
    expect(page).to have_text("Toby wins the point")
  end

  scenario "The game informs in the case of a draw" do
    srand(1)
    visit('/')
    fill_in :player_1_name, with: "Toby"
    click_button "submit"
    click_button "paper"
    expect(page).to have_text("Round ended in a draw")
  end
end
