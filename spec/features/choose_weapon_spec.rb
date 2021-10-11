feature 'Choose weapon' do
  scenario 'Choose from rock, paper and scissors' do
    visit '/'
    fill_in :player_name, with: 'Cat'
    click_button 'Rock'
    expect(page).to have_content 'Cat'
    expect(page).to have_content 'rock'
  end 
end