feature "one or two player? page:" do

  before do
    visit('/')
    click_button('Original')
  end

  scenario "user sees a game menu" do
    expect(page).to have_content('Game Menu')
  end

  scenario "user can choose one player" do
    click_button('one-player')
  end

  scenario "user can choose two player" do
    click_button('two-player')
  end

  scenario "user can choose to go back" do
    click_button('back')
  end

end
