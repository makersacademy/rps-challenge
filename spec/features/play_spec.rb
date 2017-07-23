
feature 'playing rps' do

  before do
    visit('/register')
    fill_in :name, with: 'Mutsa'
    click_button 'Submit'
    click_button 'Choose your Weapon!'
  end
  scenario 'see the weapon options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
  scenario 'chooses one weapon to play' do
    click_button 'Rock'
    expect(page).to have_content 'You have chosen to play the Rock'
  end
end
