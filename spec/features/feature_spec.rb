
feature 'register name' do
  scenario 'register and see my name' do
    visit '/'
    fill_in 'player_1_name', with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'James'
  end
end
