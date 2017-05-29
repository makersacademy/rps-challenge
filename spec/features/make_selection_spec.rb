feature 'user can make selection' do
  scenario 'player can choosse Rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end
  scenario 'player can choosse Paper' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content('You chose Paper')
  end
  scenario 'player can choosse Scissors' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content('You chose Scissors')
  end
end
