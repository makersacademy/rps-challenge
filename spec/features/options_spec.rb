feature 'Choosing option' do
  scenario 'Player chooses rock, paper, or scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You used Rock...'
  end
end
