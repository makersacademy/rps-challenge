feature 'Display winner' do
  scenario 'displaying the winner' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    choose 'scissors'
    click_button 'Submit your choice'
    expect(page).to have_content 'won'
  end
end