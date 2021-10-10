feature "Scores" do
  scenario 'keeps track of player scores' do 
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content "Ronaldo: 0"
  end 
  scenario 'keeps track of cpu scores' do 
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content "CPU: 0"
  end 
end
