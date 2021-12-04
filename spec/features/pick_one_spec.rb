feature 'Pick one option' do
  scenario 'click on rock' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    click_button('Rock')
    expect(page).to have_content("Pikachu's choice:\nrock")
  end

  scenario 'click on paper' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    click_button('Paper')
    expect(page).to have_content("Pikachu's choice:\npaper")
  end

    scenario 'click on scissors' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    click_button('Scissors')
    expect(page).to have_content("Pikachu's choice:\nscissors")
  end
end