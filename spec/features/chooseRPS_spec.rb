feature 'RPS Selection' do

  scenario 'Player 1 may select RPS' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

end
