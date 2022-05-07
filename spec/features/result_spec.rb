
xfeature 'Receiving the result' do
  scenario 'result' do
    visit('/')
    click_button 'Scissors'
    expect(page).to have_content 'You chose: Scissors'
    expect(page).to have_content 'Computer chose: Paper'
    expect(page).to have_content 'You win! Scissors beats paper!'
    click_button 'Play again'
    click_button 'Finish game'
  end
end
