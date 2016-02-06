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
      #allow(comp).to receive(:response).and_return('PAPER')
      expect(page).to have_content 'COMPUTER CHOSE:'
    end

    scenario 'display winner' do
      sign_in_and_play
      click_button('ROCK')
      expect(page).to have_content 'YOU WIN' || 'YOU LOSE'
    end
end
