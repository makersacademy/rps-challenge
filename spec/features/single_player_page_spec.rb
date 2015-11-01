feature "single-player page:" do

  before do
    visit('/')
    click_button('Original')
    click_button('one-player')
  end

  scenario "user sees a game menu" do
    expect(page).to have_content('Game Menu')
  end

  scenario "user can submit two names" do
    submit_single_name("Ed")
  end

  scenario "user can choose to go back" do
    click_button('back')
  end

end
