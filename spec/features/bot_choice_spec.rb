feature 'Choose' do
  scenario 'the bot chooses Paper' do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content "Bot chooses Paper!"
  end
end
