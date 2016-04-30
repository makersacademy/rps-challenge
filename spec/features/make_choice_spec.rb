feature 'Player chooses rock, paper or scissors' do
  scenario 'page renders options to choose' do 
    visit ('/')
    fill_in :player_1_name, with: 'Tom'
    click_button 'Play!'
    expect(page).to have_content 'Welcome Tom! Choose paper, rock or scissors...'
  end 


end