feature 'get players' do
  scenario 'enters player name' do
    visit '/'
    fill_in 'name', with: 'Liz'
    click_on 'Submit'

    expect(page).to have_content "Player Name: Liz"
  end
end
