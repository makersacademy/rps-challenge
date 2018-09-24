feature 'Allows user to input name' do
  scenario 'name is given as input and printed on screen', focus:true do
    submit_name
    expect(page).to have_content 'Player: Scooby Doo'
  end
end
