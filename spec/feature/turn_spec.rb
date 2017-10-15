feature 'change player' do
  scenario 'Player 1 finishes turn' do
    sign_up_players_one_computer
    find('#rock').click
    expect(page).to have_content 'Austin'
  end
end