feature 'computer outputs a random move' do
  scenario 'computer outputs a move' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content 'Computer played Scissors'
    end
  end
