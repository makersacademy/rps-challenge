feature 'Enter name' do
  scenario 'submitting the user name' do
    sign_in_and_play
    expect(page).to have_content 'Sam vs. Harry the bot'
  end
end
