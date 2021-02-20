feature 'player can play again' do
  scenario 'play again button takes player back to choice page' do
    sign_up_and_go
    click_button 'Play'
    click_link 'Rock'
    click_button 'Play Again'
    expect(page).to have_link 'Rock'
  end
end
