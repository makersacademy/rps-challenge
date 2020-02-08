feature "display the players choice" do 
  scenario 'should see what the player chose' do 
    sign_in
    click_button 'Rock'
    expect(page).to have_content "Joe chose Rock"
  end 
end 