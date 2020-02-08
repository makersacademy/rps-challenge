feature 'reply button' do 
  scenario 'Player should win' do 
    sign_in
    click_button 'Rock'
    expect(page).to have_button('Replay')
  end 
end 