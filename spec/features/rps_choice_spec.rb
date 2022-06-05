feature 'Enter player choice' do
  scenario 'submit rock, paper or scissors' do
    visit('/play')
    fill_in :player_choice, with: "Rock"
    click_button "Submit"
    expect(page).to have_content "Your choice: Rock"
  end
end
