feature 'testing infrastructure' do

  scenario 'user is asked to enter name' do
    visit('/')
    expect(page).to have_content('Please enter name')
  end

  scenario 'user fills in name' do
    sign_in_and_play
    expect(page).to have_content("Welcome to RPS, Magnus")
  end

  scenario 'user chooses weapon' do
    sign_in_and_play
    find("option[value='rock']").click
    click_button("Play")
    expect(page).to have_content("You chose rock")
  end

end
