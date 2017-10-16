feature 'Calculate win Rock/Paper/Scissors' do
  scenario 'Player 1 wins' do
    sign_up_players
    find('#paper').click
    find('#rock').click
    expect(page).to have_content 'Austin'
  end

  scenario 'Player 2 wins' do
    sign_up_players
    find('#rock').click
    find('#paper').click
    expect(page).to have_content 'Rick'
  end
end