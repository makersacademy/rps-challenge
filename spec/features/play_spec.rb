
feature 'playing rps' do

  before do
    visit('/register')
    fill_in :name, with: 'Mutsa'
    click_button 'Submit'
  end
  scenario 'see the weapon options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
