feature 'Testing entering names' do
  scenario 'enter name and see it in lights' do
    sign_in_and_play
    expect(page).to have_content('Oliver')
  end
end
