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
      expect(page).to have_content 'Jonny chose rock'
    end

    scenario 'make choice' do
      choose 'paper'
      click_button 'Submit'
      expect(page).to have_content 'Jonny chose paper'
    end

    scenario 'make choice' do
      choose 'scissors'
      click_button 'Submit'
      expect(page).to have_content 'Jonny chose scissors'
    end
  end

  scenario 'it shows computer choice' do
    sign_in
    choose 'rock'
    click_button 'Submit'
    fake_computer = double(:fake_computer, :computer_choice => 'scissors')
    expect(page).to have_content 'Computer chose'
  end
end