feature 'Player choice' do
  scenario 'rock, paper or scissors selected' do
    name_entered
    click_button 'Rock'
    expect(page).to have_content 'Luke chose Rock!'
  end
end
    
