=begin
feature "Options" do 


  scenario "player wants to make a move" do 
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content 'Rock'
  end 

  scenario "player wants to make a move" do 
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content 'Paper'
  end 

  scenario "player wants to make a move" do 
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content 'Scissors'
  end 
end 
=end
