feature 'View players choice' do
  before do
    visit('/')
    fill_in :player_name, with: 'Rango'
    click_button 'Submit'
  end

  scenario 'player chose rock' do
    click_button 'Rock'
    expect(page).to have_content 'Rango chooses Rock'
  end

  scenario 'player chose paper' do
    click_button 'Paper'
    expect(page).to have_content 'Rango chooses Paper'
  end

  scenario 'player chose scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'Rango chooses Scissors'
  end

end
