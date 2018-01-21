feature 'the player can play again' do

  scenario 'the winner page redirects to the how to page' do
    sign_in_and_play
    win
    click_on "Again"
    expect(page).to have_content("How to Play")
  end

  scenario 'the loser page redirect to the how to page' do
    sign_in_and_play
    lose
    click_on "Again"
    expect(page).to have_content("How to Play")
  end

end
