feature 'player picks rock, paper or scissors' do
  scenario 'Asks player to make a choice' do
    visit('/')
    fill_in('name', with: 'Bobby')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Computer chose")
  end
end