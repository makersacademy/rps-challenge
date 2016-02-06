
feature 'US1 - Player can register their name' do
  it 'Returns the user name that the player inputs' do
    visit '/'
    fill_in 'Player_1_Name', with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Bob, are you ready to play RPS?'
  end
end