feature 'web pages' do

  scenario 'Visits the route to make sure it exists' do
    visit('/')
    expect(page).to have_content 'Greetings, warrior. Register below:'
  end

  scenario "Adds Luke as player and click register" do
    set_up
    expect(page).to have_content 'Luke vs. HAL'
  end

  scenario "Checks page has Rock Paper Scissors buttons" do
    set_up
    find_button("Rock")
    find_button("Paper")
    find_button("Scissors")
  end

  scenario "Page shows the result of the game" do
    set_up
    click_button("Rock")
    expect(page).to have_content 'The result of the round'

  end

end
