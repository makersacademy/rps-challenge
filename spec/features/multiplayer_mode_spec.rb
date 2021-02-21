feature 'Multiplayer mode' do
  scenario '2 players can sign in and play' do
    visit '/'
    click_button 'Multiplayer Mode'
    fill_in('name', with: 'Chrissy')
    fill_in('name2', with: 'James')
    click_button 'Ready'
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content(" \nChrissy chose rock James chose rock")
  end
end
