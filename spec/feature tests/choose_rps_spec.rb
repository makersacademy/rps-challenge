feature 'Attack' do 
  scenario 'User selects Rock, Paper or Scissors' do
    visit('/')
    fill_in('name', with: 'Mikey')
    click_button('Submit')
    select("Paper", from: "rps")
    click_button('Submit')
    expect(page).to have_content "Player chooses Paper"
  end
end