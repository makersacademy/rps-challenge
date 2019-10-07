feature 'Enter Names' do

  scenario 'Both Player 1 and Player 2 names are entered, moves to Selection page' do
    sign_in_and_play
    expect(page).to have_content("Dan vs. Millie")
  end

end
