feature 'logs player selection' do
  scenario 'Player receives confirmation of their selection' do
    sign_in_and_play
    choose('Rock')
    click_button "Submit"
    expect(page).to have_content 'You chose Rock!'
  end
  
end
