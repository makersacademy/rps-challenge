feature 'Play game' do
  scenario 'Select Rock, Paper or Scissors' do
    visit('/play')
    click_button 'Rock!'
    expect(page).to have_content('You won!')
  end
end
