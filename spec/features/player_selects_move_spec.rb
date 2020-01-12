feature 'Player Selects Move' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'name1: rock'
  end
end
