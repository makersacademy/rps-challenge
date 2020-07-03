feature 'play again' do
  scenario 'button available to play again' do
    sign_in_and_play
    chose_paper
    expect(page).to have_content 'New Game'
  end

  scenario 'button redirects to new game' do
    sign_in_and_play
    chose_paper
    click_on 'New Game'
    expect(page)
end
