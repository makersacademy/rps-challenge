feature 'restart' do
  scenario 'click and play again' do
    sign_in_and_play
    click_on 'ROCK'
    click_link 'Play Again'
    expect(page).to have_content "Welcome #{PLAYER_NAME}"
    expect(page).to have_content "Choose your move!"
  end
end
