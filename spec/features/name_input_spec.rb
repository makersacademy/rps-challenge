feature 'Allows user to input name' do
  scenario 'name is given as input and printed on screen' do
    submit_name
    expect(page).to have_content 'Player: Scooby Doo'
  end
end
