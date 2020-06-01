feature "play rock, paper, scissors" do
  before do
    visit('/')
    fill_in :name, with: 'Victor'
    click_button 'Play'
  end
  scenario "the player can choose paper" do
    expect(page.find("input#paper")).not_to be nil
    expect(page.find("input#rock")).not_to be nil
    expect(page.find("input#scissors")).not_to be nil
  end

  scenario "player chose an option" do
    choose 'rock'
    click_button 'Go'
    expect(page).to have_content('rock')
  end
end
