feature 'Feature test' do


  feature 'Home page functionality:' do
    scenario 'shows game title' do
      visit('/')
      expect(page).to have_content('Rock Paper Scissor')
    end

    scenario 'lets user type in his name' do
      sign_in_and_play
    end

    scenario 'index page has button for each option' do
      visit('/')
      expect(page).to have_select('options', :options => ['Rock','Paper','Scissor'])
    end
  end

  feature 'Results page functionality:' do
    scenario 'shows rock if rock picked' do
      sign_in_and_play
      expect(page).to have_content('Rock')
    end

    scenario 'shows paper if rock picked' do
      visit('/')
      select 'Paper'
      click_button 'Play'
      expect(page).to have_content('Paper')
    end

    scenario 'Shows draw result if same chosen' do
      sign_in_and_play
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      visit('/result')
      expect(page).to have_content('Rock vs Rock')
      expect(page).to have_content('Draw')
    end

    scenario 'Shows player winning' do
      sign_in_and_play
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissor')
      visit('/result')
      expect(page).to have_content('Rock vs Scissor')
      expect(page).to have_content('Alfonso wins')
    end
  end

end
