
feature "the  game should have 3 action button" do

  scenario "the action buttons are present on game load" do 
    visit('/game')
    @rock = find("input[@name='rock']")
    @paper = find("input[@name='paper']")
    @scissors = find("input[@name='scissors']")
    expect([@rock, @paper, @scissors].any?{ |val| val == nil }).to eq(false)
  end

  scenario "navigate back to game from results where you lost" do
    visit("/game")
    click_link("New player / game")
    expect(page).to have_content("Welcome to Rock - Paper - Scissors")
  end

end
