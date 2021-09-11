
feature 'Enter name' do
  scenario 'User enters name' do
    visit ('/')
    fill_in :name , with: 'Florence'
    click_button 'Submit'
    expect(page).to have_content 'Welcome player, please enter your name'
  end 
end 