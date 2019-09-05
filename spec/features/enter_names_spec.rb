# Enter 2 names and click submit - next page.

feature 'Enter Names' do
  scenario 'Both Player 1 and Player 2 names are entered, moves to Selection page' do
    visit('/')
    fill_in 'Player1', with: "Dan"
    fill_in 'Player2', with: "Millie"
    click_button "Submit"
    expect(page).to have_content("Dan vs. Millie")
  end
  
end