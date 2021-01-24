feature 'Choose' do
  scenario 'the bot chooses Paper' do
    sign_in_and_play
    click_button("Paper")
    # This is a built in capybara selector that selects elements by CSS
    message = find(:css, "#bot").text
    expect(all_bot_options).to include message
  end
end
