feature 'Playability feature Test' do

  context 'Different Game Versions' do

    it 'One player game' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      visit '/'
      expect(page).to have_content 'Rock Paper Scissors Single Player'
      expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
      fill_in 'name', with: 'Pietro'
      click_button
      expect(page).to have_content 'Pietro chose rock Watson chose scissors'
      expect(page).to have_content 'Pietro won!'
    end

    it 'Two Player Game' do
      visit '/'
    end

  end

end
