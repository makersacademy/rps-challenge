feature 'While playing the computer' do
  scenario 'after player selects hand, computer selects a random hand' do
    sign_in_to_play
    click_button('paper')
    expect(page.body).to have_xpath("//*[@id=\"Computer_Selection\"]")
    expect(page).to have_content("The Computer selected:")
  end
end
