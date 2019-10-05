feature 'Enter weapon' do
  scenario '-Choose weapon from selection' do
    visit '/'
    fill_in :player_1, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
