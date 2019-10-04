feature 'make a move' do
  scenario 'the player can make a move and see a confirmation' do

    visit('/')
    fill_in :name, with: 'Jess'
    click_button 'submit'
    click_button 'ROCK'
    expect(page).to have_content ("YOUR MOVE WAS: ROCK")
    
  end
end
