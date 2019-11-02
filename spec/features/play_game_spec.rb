feature 'playing the game' do
  scenario 'player move is displayed' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Ginny played ROCK')
  end

  scenario 'computer move is displayed' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Computer played ROCK')
  end

  scenario 'winner is displayed' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Computer WINS')
  end
end
