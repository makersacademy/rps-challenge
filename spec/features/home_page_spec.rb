feature "Home page:" do

  before { visit('/') }

  scenario "user sees a Welcome screen" do
    expect(page).to have_content('Welcome to Rock Paper Scissors')
  end

  scenario "user can choose original version" do
    click_button 'Original'
  end

  scenario "user can choose advanced rules" do
    click_button 'Advanced'
  end

  scenario "user can choose to view rules" do
    click_button 'rules'
  end

end
