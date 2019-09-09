feature 'Play again' do
  scenario 'Player can choose to play again' do
    sign_in_and_play
    click_on 'Rock'
    click_on 'Play again'
    expect(page).to have_content "Make your choice:"
  end
end
