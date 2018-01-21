feature 'Single or multiplayer' do
  scenario 'User choice' do
    visit '/'
    expect(page).to have_button 'Single Player'
    expect(page).to have_button 'Multiplayer'
  end
end
