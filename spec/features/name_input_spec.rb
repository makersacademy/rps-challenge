feature 'Allows user to input name' do
  scenario 'name is given as input and printed on screen' do
    visit '/'
    fill_in 'name', with:'Scooby Doo'
    click_button('Submit')
    expect(page).to have_content 'Player: Scooby Doo'
  end
end
