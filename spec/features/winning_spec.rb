feature 'Winning the game' do
  scenario 'The result is displayed' do
    sign_in_and_play
    click_button('Paper')
    click_link 'Check who won...'
    expect(page).to have_content 'And the winner is...'
  end
end
