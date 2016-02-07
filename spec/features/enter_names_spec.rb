feature 'Enter names' do
  scenario 'submitting names' do
    sin_in
    expect(page).to have_content 'Edu'
  end
end

feature 'View hit points' do
  scenario 'see Player options' do
    sin_in
    expect(page).to have_content 'Edu'
  end
end

feature 'choosing' do
  scenario 'attack Player 2' do
    sin_in
    click_button 'Rock'
    expect(page).to have_content 'Edu select Rock'
  end
end 