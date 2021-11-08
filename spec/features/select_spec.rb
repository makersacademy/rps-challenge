feature 'Select choice' do
  scenario 'Select Rock' do
    visit('/')
    fill_in :player_name, with: 'Teffox'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Teffox selected Rock!'
  end

  scenario 'Select Paper' do
    visit('/')
    fill_in :player_name, with: 'Teffox'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Teffox selected Paper!'
  end

  scenario 'Select Scissors' do
    visit('/')
    fill_in :player_name, with: 'Teffox'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Teffox selected Scissors!'
  end
end