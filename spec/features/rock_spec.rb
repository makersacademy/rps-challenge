feature 'rock' do
  scenario 'the user choose to play rock' do
    register
    click_link 'Rock'
    expect(page).to have_content("You've selected Rock")
  end
end
