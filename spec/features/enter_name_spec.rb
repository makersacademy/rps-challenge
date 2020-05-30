feature 'start game' do
  
  scenario 'Player enters there name' do
    visit ('/')
    fill_in('Player name', :with 'Al')
    expect(page).to have_content 'Al'
  end

end