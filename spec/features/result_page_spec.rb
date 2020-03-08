feature 'Result of game' do 
  scenario 'view the option choosen by both' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You chose Rock'
  end 
    
end
