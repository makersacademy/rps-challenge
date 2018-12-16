feature 'select rock, paper, scissors' do 
  scenario 'user can select to play rock' do 
    sign_in_and_play
    click_link 'rock' 
    expect(page).to have_content 'rock' 
  end

    scenario 'user can select to play scissors' do 
      sign_in_and_play
      click_link 'paper'
      expect(page).to have_content 'PAPER'
    end
   
end 