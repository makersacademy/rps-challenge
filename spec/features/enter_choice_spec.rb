
feature 'Enter choice' do
  
  scenario 'submit choice' do
    sign_in_and_play
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
  end
  
  scenario 'submit choice' do
    sign_in_and_play
    choose("rock")
    click_button 'Submit'
    expect(page).to have_content 'Max chose: rock'
  end
end
