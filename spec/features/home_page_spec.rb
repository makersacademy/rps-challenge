feature "Home page:" do

  before { visit('/') }

  scenario "user sees a Welcome screen" do
    expect(page).to have_content('Rock Paper Scissors')
  end
  
end
