feature 'Testing entering names' do
  scenario 'enter name and see it in lights' do
    visit('/')
    fill_in 'p1_name', with: 'Oliver'
    click_button 'Enter'
    expect(page).to have_content('Oliver')
  end
end
