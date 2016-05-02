feature 'Result' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    choose_and_submit(:paper)
  end

    scenario 'displays the result' do
      expect(page).to have_content "you drew"
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
