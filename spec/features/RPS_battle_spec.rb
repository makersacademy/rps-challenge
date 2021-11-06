feature 'RPS battle' do
  scenario 'The game declares a result' do
    sign_in_and_play
    fill_in :player_move, with: 'rock'
    click_button('Submit')
    expect(page).to have_content 'Ryan wins!'
  end
end