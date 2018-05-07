


feature 'See name in lights' do
  scenario 'Player can enter their name' do
    enter_name
    expect(page).to have_text 'Mickey'
  end

  feature 'Player loses' do
    before do
      allow_any_instance_of(Computer).to receive(:random_weapon).and_return('Rock')
      end
    scenario 'Player chooses scissors' do
      enter_name
      click_button "Scissors"
      expect(page).to have_text 'You Lose :('
    end
    scenario 'Player chooses Rock' do
      enter_name
      click_button "Rock"
      expect(page).to have_text 'It\'s a tie!'
    end
    scenario 'Player chooses Paper' do
      enter_name
      click_button "Paper"
      expect(page).to have_text 'You Win!'
    end
  end
end
