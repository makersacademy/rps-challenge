feature "Attack confirmation" do
  scenario 'displays confirmation of attack option on new page' do
    sign_in_and_play
    choose "ROCK"
    click_button "My choice is made"
    expect(page).to have_content "You chose to use ROCK"
  end

  scenario 'page has a button to return to main page and choose again' do
    sign_in_and_play
    choose "ROCK"
    click_button "My choice is made"
    click_button "Changed my mind, I want to choose again"
    expect(page).to have_content "Welcome to RPS"
  end

    scenario 'confirmation of SPOCK attack' do
    sign_in_and_play
    choose "SPOCK"
    click_button "My choice is made"
    expect(page).to have_content "You chose to use SPOCK"
  end
end