def sign_in_and_play_vs_CPU
    visit '/'
    choose 'Human vs. CPU'
    click_button 'Submit'    
    fill_in 'Player_1_Name', with: 'Bob'
    click_button 'Submit'
    click_link "Let's Play!"
end
