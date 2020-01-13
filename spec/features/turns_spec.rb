feature 'View number of turns' do
    scenario 'see Player number of turns' do
      visit('/')
        fill_in :player_name, with: 'Julia'
        click_button "let's begin"
        click_button "Rock"
        click_button "Paper"
        click_button "Scissiors"
      expect(page).to have_content 'Julia: you have 3 turns left'
    end    
  
    # scenario 'see computer number of turns' do
    #   visit('/')
    #     fill_in :player_name, with: 'Computer'
    #     click_button "let's begin"
    #   expect(page).to have_content 'Computer: 3 turns left'
    # end   
  
  end