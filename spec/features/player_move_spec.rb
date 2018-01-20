feature 'select move' do
  scenario 'player starts game and selects move' do
    visit '/'
    fill_in 'name', with: 'sam'
    click_button 'start'
    click_button 'rock'
    expect(page).to have_content 'rock'
  end
end
    
