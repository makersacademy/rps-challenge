feature 'Attacking to Player 2' do
 
  scenario 'Attacking with rock to  player 2' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Tanil attacked with rock'    
   end

  scenario 'Attacking with paper to  player 2' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'Tanil attacked with paper'    
   end

  scenario 'Attacking with scissors to  player 2' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'Tanil attacked with scissors'    
   end
    
end