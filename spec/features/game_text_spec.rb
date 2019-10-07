feature 'displays rock paper scissors buttons' do
  scenario 'user logs in and sees choices to click' do
    log_in
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
    # expect(page).to have_content "Rock"
    # expect(page).to have_content "Rock"
  end

end
