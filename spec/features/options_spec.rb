
feature 'Choosing the button' do
  scenario 'Check if page has the buttons' do
    visit('/')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'rock' do
    visit('/')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    click_button 'Rock'
  end
end
