feature 'Show computer choice' do
  scenario 'computer makes a random choice of rock, paper or scissors' do
    visit('/show_choice')
    # fill_in :player_choice, with: "Rock"
    # click_button "Submit"
    # expect(page).to have_content "Your choice: Rock"
    expect(page).to have_content("Computer choice: Rock")#.or have_content("Computer choice: Paper")
  end
end