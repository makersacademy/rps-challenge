feature 'Playability feature Test' do

  context 'single player' do

    it 'game version against Ai - win' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      visit '/'
      expect(page).to have_content 'Rock Paper Scissors Single Player'
      expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
      fill_in 'name1', with: 'Pietro'
      select "Rock", :from => "weapon1"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose rock Watson chose scissors'
      expect(page).to have_content 'Pietro won!'
      expect(page).to have_link 'Play Again...'
      expect(page).to have_link 'Go To Two Player Game'
    end

    it 'game version against Ai - draw' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      visit '/'
      expect(page).to have_content 'Rock Paper Scissors Single Player'
      expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
      fill_in 'name1', with: 'Pietro'
      select "Scissors", :from => "weapon1"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose scissors Watson chose scissors'
      expect(page).to have_content 'It was a draw'
      expect(page).to have_link 'Play Again...'
      expect(page).to have_link 'Go To Two Player Game'
    end

  end

  context 'two player' do

    it 'game version - win' do
      visit '/'
      click_link 'Go To Two Player Game'
      expect(page).to have_content 'Rock Paper Scissors Two Player'
      expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
      fill_in 'name1', with: 'Pietro'
      fill_in 'name2', with: 'Joanna'
      select "Rock", :from => "weapon1"
      select "Paper", :from => "weapon2"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose rock Joanna chose paper'
      expect(page).to have_content 'Joanna won!'
      expect(page).to have_link 'Play Again...'
      expect(page).to have_link 'Go To Two Player Game'
    end

    it 'game version - draw' do
      visit '/'
      click_link 'Go To Two Player Game'
      expect(page).to have_content 'Rock Paper Scissors Two Player'
      expect(page).to have_select("weapon", options: ['Rock', 'Paper', 'Scissors'])
      fill_in 'name1', with: 'Pietro'
      fill_in 'name2', with: 'Joanna'
      select "Scissors", :from => "weapon1"
      select "Scissors", :from => "weapon2"
      click_button 'Play!'
      expect(page).to have_content 'It was a draw'
      expect(page).to have_link 'Play Again...'
      expect(page).to have_link 'Go To Two Player Game'
    end

  end

end
