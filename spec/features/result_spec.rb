
feature 'WEBPAGE: check results ' do
  subject(:computer) { Computer }

  before do
    allow_any_instance_of(computer).to receive(:weapon_select).and_return(:rock)
  end
  
    scenario 'P1 chooses rock' do
      sign_in_and_play('Timmy')
      click_button 'rock'
      expect(page).not_to have_content 'You chose: scissors'
      expect(page).to have_content 'You chose: rock'
    end

    scenario 'P1 wins' do
      sign_in_and_play('Timmy')
      click_button 'paper'
      expect(page).to have_content 'win'
      expect(page).not_to have_content 'lose'
    end

    scenario 'tie game' do
      sign_in_and_play('Timmy')
      click_button 'rock'
      expect(page).to have_content 'draw'
      expect(page).not_to have_content 'win'
    end

    scenario 'lose' do
      sign_in_and_play('Timmy')
      click_button 'scissors'
      expect(page).to have_content 'Computer wins'
    end
end