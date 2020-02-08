feature "Test the final results" do 

  scenario 'Player should win' do 
    srand(4)
    sign_in
    click_button 'Rock'
    expect(page).to have_content "You win!"
  end 
end 
