feature 'Choose a play' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "You chose rock!"
  end
end
