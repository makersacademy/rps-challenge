require_relative './web_helpers'

RSpec.feature "Playing RPS", :type => :feature do

  describe "Winning" do
    scenario "I play rock. Computer plays scissors. I win." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_content "You win!"
    end
    scenario "I play paper. Computer plays rock. I win." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_content "You win!"
    end
    scenario "I play scissors. Computer plays paper. I win." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      click_button('Scissors')
      expect(page).to have_content "You win!"
    end
  end

  describe "Losing" do
    scenario "I play rock. Computer plays paper. Computer wins." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_content "You lose!"
    end
    scenario "I play paper. Computer plays scissors. Computer wins." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_content "You lose!"
    end
    scenario "I play scissors. Computer plays rock. Computer wins." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      click_button('Scissors')
      expect(page).to have_content "You lose!"
    end
  end

  describe "Ties" do
    scenario "I play rock. Computer plays rock. We tie." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_content "Game is a tie"
    end
    scenario "I play paper. Computer plays paper. We tie." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_content "Game is a tie"
    end
    scenario "I play scissors. Computer plays scissors. We tie." do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      click_button('Scissors')
      expect(page).to have_content "Game is a tie"
    end
  end

end
