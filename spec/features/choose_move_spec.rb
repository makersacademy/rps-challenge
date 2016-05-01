feature 'Choose one of three moves' do
  scenario 'Chooses Rock' do
    sign_in_and_play
    choose('rock')
    click_button('Submit')
    # expect(find_field("rock")).to be_checked
    expect(page).to have_content("game over!")
  end
end