feature 'Submitting name' do
  scenario 'User enters his name on the index page and lands on the page to play' do
    enter_name
    expect(page).to have_content 'Hello Sophie. Ready to play?'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
