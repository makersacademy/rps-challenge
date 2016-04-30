feature 'see attack choices' do
  scenario 'can choose rock' do
    sign_in_with_name
    expect(page).to have_button 'Rock'
  end
  scenario 'can choose paper' do
    sign_in_with_name
    expect(page).to have_button 'Paper'
  end
  scenario 'can choose scissors' do
    sign_in_with_name
    expect(page).to have_button 'Scissors'
  end
end
