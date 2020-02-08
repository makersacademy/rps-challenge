feature 'making moves' do
  scenario 'player enters a move' do
    visit '/'
    fill_in 'name', with: 'Liz'
    click_on 'Submit'
    choose 'Rock'
    click_on 'Play'

    expect(page).to have_content('Liz played Rock')
  end
end