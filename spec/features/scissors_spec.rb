feature 'scissors' do
  scenario 'The user choose to play scissors' do
    register
    click_link 'Scissors'
    expect(page).to have_content("You've selected Scissors")
  end
end
