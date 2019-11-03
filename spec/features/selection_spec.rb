feature 'Making a Selection' do
  scenario 'Selecting Rock' do
    enter_name
    selection = "rock"
    find("option[value='#{selection}']").click
    click_button('Submit')
    expect(page).to have_content("You chose Rock!")
  end
end