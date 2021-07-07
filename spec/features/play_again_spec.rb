feature 'play again' do
  scenario 'button redirects to new game' do
    sign_in_and_play
    chose_paper
    click_on 'New Game'
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end
end
