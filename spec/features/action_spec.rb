feature 'Decide on a action' do
  scenario 'Player one to select rock, paper or scissors' do
    fill_in :action, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'rock'
  end
end
