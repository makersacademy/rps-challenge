feature 'Play again' do
  scenario 'Player can choose to play again' do
    sign_in_and_play
    click_on 'Rock'
    click_on 'Finish playing'
    expect(page).to have_content 'Thank you for playing. Goodbye!'
  end
end
