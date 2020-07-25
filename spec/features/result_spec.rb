feature 'start a new game' do
  scenario 'player is taken home page after game concludes' do
    sign_in_and_play
    click_link('play again')
    expect(page).to have_content 'What is your name?'
  end
end
