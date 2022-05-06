feature 'Rock' do
  scenario 'choosing rock' do
    visit('/')
    click_button 'Rock'
    # click_button.should be_redirect
    # click_button.location.should include '/results'
  end
end



# expect(page).to have_content 'Your chose: Scissors'
# expect(page).to have_content 'Computer chose: Paper'
# expect(page).to have_content 'You win! Scissors beats paper!'
# click_button 'Play again'