feature "Home page:" do

  before { visit('/') }

  scenario "user sees a Welcome screen" do
    expect(page).to have_content('Rock Paper Scissors')
  end

  scenario "user can choose single player" do
    click_button 'single-player'
  end

  scenario "user can choose multi player" do
    click_button 'multi-player'
  end

end
