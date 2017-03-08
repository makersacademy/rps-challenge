feature 'playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Katie'
    click_button 'Submit'
  end

  scenario 'see the weapon options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end


  scenario 'choose a weapon' do
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end
end
