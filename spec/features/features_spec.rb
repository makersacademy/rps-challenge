feature 'Enter name' do
  let(:comp) {double Computer.new }

  scenario 'submit name' do
    sign_in_and_play
  end

  scenario 'choose hand' do
    sign_in_and_play
    expect(page).to have_content 'GREETINGS MATT CHOOSE YOUR WEAPON'
  end

    scenario 'display chosen weapon and computer choice' do
      sign_in_and_play
      click_button('ROCK')
      expect(page).to have_content 'YOU CHOSE ROCK'
      expect(page).to have_content 'COMPUTER CHOSE: '
    end

    scenario 'PLAY AGAIN' do
      sign_in_and_play
      click_button('ROCK')
      click_link("AGAIN")
      expect(page).to have_content 'CHOOSE YOUR WEAPON'
    end
end
