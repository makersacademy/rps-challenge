feature 'entering names' do 

  scenario 'entering player name' do 
    start_game
    expect(page).to have_content 'Gwen vs. Computer'
    expect(page).to_not have_content 'Sinatra'
  end 

end