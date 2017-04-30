feature 'playing a game' do

  before do
    visit '/'
    fill_in :player_name, with: 'Daniel'
    click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
