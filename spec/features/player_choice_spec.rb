# User Story 2
# As player 1 I would like to make a choice of R,P,S

feature 'Choose move' do
  context 'player 1 submitting rock, paper or scissors' do
    scenario 'selects rock' do
      sign_in_and_play
      choose_rock
      expect(page).not_to have_xpath("//img[contains(@src,'paper.png')]")
      expect(page).not_to have_xpath("//img[contains(@src,'scissors.png')]")
      expect(page).to have_xpath("//img[contains(@src,'rock.png')]")
    end
    scenario 'selects paper' do
      sign_in_and_play
      choose_paper
      expect(page).not_to have_xpath("//img[contains(@src,'rock.png')]")
      expect(page).not_to have_xpath("//img[contains(@src,'scissors.png')]")
      expect(page).to have_xpath("//img[contains(@src,'paper.png')]")
    end
    scenario 'selects scissors' do
      sign_in_and_play
      choose_scissors
      expect(page).not_to have_xpath("//img[contains(@src,'rock.png')]")
      expect(page).not_to have_xpath("//img[contains(@src,'paper.png')]")
      expect(page).to have_xpath("//img[contains(@src,'scissors.png')]")
    end
  end
end
