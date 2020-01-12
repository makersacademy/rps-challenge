feature 'Player Selects Move' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'NAME1: ROCK'
  end
end
