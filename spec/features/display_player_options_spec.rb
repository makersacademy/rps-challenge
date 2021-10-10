
feature "Options" do 


  scenario "player wants to make a move" do 
    sign_up_play
    expect(page.find_by_id('rock').value).to have_content 'Rock'
  end 

  scenario "player wants to make a move" do 
    sign_up_play
    expect(page.find_by_id('paper').value).to have_content 'Paper'
  end 

  scenario "player wants to make a move" do 
    sign_up_play
    expect(page.find_by_id('scissors').value).to have_content 'Scissors'
  end 
end 
