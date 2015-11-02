feature "multi-player page:" do

  before do
    visit('/')
    click_button('Original')
    click_button('two-player')
  end

  scenario "user sees a game menu" do
    expect(page).to have_content('Game Menu')
  end


  scenario "user can submit two names" do
    submit_two_names("Ed", "John")
  end

  scenario "user can choose to go back" do
    click_button('back')
  end

end
