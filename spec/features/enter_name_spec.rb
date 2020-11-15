feature 'Enter name' do 
  scenario 'user inputs name and the game starts' do 
    visit ('/')
    fill_in :name, with: 'Rafa'
    click_button 'Start Game!'
    expect(page).to have_content 'Rafa'
  end
end