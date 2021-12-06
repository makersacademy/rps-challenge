feature 'play again' do
  scenario 'returns you the play page' do
    visit '/'
    fill_in 'name', with: 'kenny'
    click_button "Submit"
    select 'rock', from: 'choice'
    click_button "Submit"
    click_button "Play again"
    expect(page).to have_content("Welcome kenny to a game of Rock, Paper, Sissors")
  end
end
