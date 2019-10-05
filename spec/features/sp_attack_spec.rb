feature 'Player attacks' do
  scenario 'Player chooses attack method' do
    single_sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Player1 chose paper."
  end
end
