feature 'Result' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
  end

    scenario 'displays a draw' do
      choose_and_submit(:paper)
      expect(page).to have_content "you drew"
    end

    scenario 'displays a win' do
      choose_and_submit(:scissors)
      expect(page).to have_content "you win"
    end

    scenario 'displays a lose' do
      choose_and_submit(:rock)
      expect(page).to have_content "you lose"
    end

    before do
      choose_and_submit(:paper)
    end
    
    scenario 'displays what the computer chose' do
      expect(page).to have_content "super sity chose paper"
    end

    scenario 'displays what you chose' do
      expect(page).to have_content "you chose paper"
    end

    scenario 'play again' do
      click_button 'play again?'
      expect(page).to have_content "sity vs. super sity"
    end

end
