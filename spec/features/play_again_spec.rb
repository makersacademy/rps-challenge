feature 'play again' do
  scenario 'button available to play again' do
    sign_in_and_play
    chose_paper
    expect(page).to have_content 'Play Again?'
  end
end
