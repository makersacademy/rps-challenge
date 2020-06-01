feature "play rock, paper, scissors" do
    before do
      visit('/')
      fill_in :name, with: 'Victor'
      click_button 'Play'
    end
  scenario "the player can choose paper" do
    expect(page.find("input#paper")).not_to be nil
  end
  scenario "the player can choose rock" do
    expect(page.find("input#rock")).not_to be nil
  end
  scenario "the player can choose scissors" do
    expect(page.find("input#scissors")).not_to be nil
  end
end