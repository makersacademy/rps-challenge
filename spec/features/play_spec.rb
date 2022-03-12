feature 'Playing a game of rock paper scissors' do
  context 'player makes choice' do
    before do
      sign_in
    end

    scenario 'view choices' do 
      expect(page).to have_field 'rock'
      expect(page).to have_field 'paper'
      expect(page).to have_field 'scissors'
    end

    scenario 'make choice' do
      choose 'rock'
      click_button 'Submit'
      expect(page).to have_content 'Hello Jonny! You chose rock'
    end

    scenario 'make choice' do
      choose 'paper'
      click_button 'Submit'
      expect(page).to have_content 'Hello Jonny! You chose paper'
    end

    scenario 'make choice' do
      choose 'scissors'
      click_button 'Submit'
      expect(page).to have_content 'Hello Jonny! You chose scissors'
    end

    scenario 'it prompts computer choice' do
      choose 'rock'
      click_button 'Submit'
      expect(page).to have_link 'Did you beat the computer?'
    end
  end
end
