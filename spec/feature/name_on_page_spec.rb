
feature 'register name' do
  scenario 'name on screen when submitted' do
    visit('/')
    fill_in 'player_name', with: 'Genny'
    click_on 'Submit'
    expect(page).to have_content 'Genny'
  end
end
