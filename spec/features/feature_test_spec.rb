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
    scenario 'shows rock if picked' do
      sign_in_and_play
      expect(page).to have_content('Rock vs')
    end

    scenario 'shows paper if picked' do
      visit('/')
      select 'Paper'
      click_button 'Play'
      expect(page).to have_content('Paper vs')
    end

    scenario 'Shows draw result if same chosen' do
      allow_any_instance_of(Computer).to receive(:selected).and_return(:Rock)
      sign_in_and_play
      expect(page).to have_content("Rock vs Rock\nClose one Alfonso! You drew.")
    end

    scenario 'Shows player winning' do
      allow_any_instance_of(Computer).to receive(:selected).and_return(:Scissor)
      sign_in_and_play
      expect(page).to have_content("Rock vs Scissor\nCongratulations")
    end
  end

end
