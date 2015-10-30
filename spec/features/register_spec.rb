feature 'Registering to play' do
  scenario 'Player enters name to start a game' do
    visit '/'
    expect(page).to have_content 'Please Register To Play!'
    fill_in('name', with: 'Norm')
    click_button 'OK'
    expect(page).to have_content 'Current Player: Norm'
  end
end

