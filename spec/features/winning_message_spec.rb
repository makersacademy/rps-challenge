feature 'Winning message displayed at the end' do
  scenario 'the player ties the draw' do
    srand 1
    sign_in_and_player1_selects
    expect(page).to have_text('Tie! Try again')
  end
end
