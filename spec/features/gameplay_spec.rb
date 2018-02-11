feature "Gameplay" do

  it "gives player options of rock, paper and scissors" do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  describe "Announcing player's chosen weapon" do

    it "chooses rock" do
      sign_in_and_play
      click_on('Rock')
      expect(page).to have_content "You chose rock"
    end

    it "chooses paper" do
      sign_in_and_play
      click_on('Paper')
      expect(page).to have_content "You chose paper"
    end

    it "chooses scissors" do
      sign_in_and_play
      click_on('Scissors')
      expect(page).to have_content "You chose scissors"
    end
  end

  describe "Announcing the computer's chosen weapon" do

    it "chooses rock" do
      sign_in_and_play
      allow_any_instance_of(Game).to receive(:pc_weapon).and_return(:rock)
      click_on('Rock')
      expect(page).to have_content "Computer chose rock"
    end

    it "chooses paper" do
      sign_in_and_play
      allow_any_instance_of(Game).to receive(:pc_weapon).and_return(:paper)
      click_on('Rock')
      expect(page).to have_content "Computer chose paper"
    end

    it "chooses scissors" do
      sign_in_and_play
      allow_any_instance_of(Game).to receive(:pc_weapon).and_return(:scissors)
      click_on('Rock')
      expect(page).to have_content "Computer chose scissors"
    end
  end
end
