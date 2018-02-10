feature "Gameplay" do
  it "gives player options of rock, paper and scissors" do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  describe "Announcing player's option" do

    let(:player_rock)  { "You chose rock" }
    let(:player_paper) { "You chose paper" }
    let(:player_scissors)  { "You chose scissors" }

    it "shows if the player has chosen the rock option" do
      sign_in_and_play
      click_on('Rock')
      expect(page).to have_content(player_rock)
    end

    it "shows if the player has chosen the paper option" do
      sign_in_and_play
      click_on('Paper')
      expect(page).to have_content(player_paper)
    end

    it "shows if the player has chosen the scissors option" do
      sign_in_and_play
      click_on('Scissors')
      expect(page).to have_content(player_scissors)
    end
  end

  describe "Announcing the computer's option" do

    let(:computer_rock)  { "Computer chose rock" }
    let(:computer_paper) { "Computer chose paper" }
    let(:computer_scissors)  { "Computer chose scissors" }

    it "shows the computer's randomly chosen option" do
      sign_in_and_play
      click_on('Rock')
      expect(page).to satisfy do |page|
        page.has_content?(computer_rock) or page.has_content?(computer_paper) or page.has_content?(computer_scissors)
      end
    end
  end
end
