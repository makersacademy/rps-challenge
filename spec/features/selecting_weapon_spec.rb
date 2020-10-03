feature 'player selects their weapon' do
  let(:chosen_weapon) { 'Rock' }
  
  scenario 'full choice of weapons provided' do
    submit_name
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
  
  scenario 'chosen weapon shown' do
    submit_name
    choose option: chosen_weapon
    click_button 'Go!'
    expect(page).to have_content "You chose #{chosen_weapon}"
  end
end
