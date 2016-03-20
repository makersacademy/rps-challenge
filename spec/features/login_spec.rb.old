feature 'Welcome Screen and Login process' do

  feature 'Welcome Screen:' do

    before :each do
      access_login_page
    end

    scenario 'Page has a welcome message' do
      expect(page).to have_content 'Welcome to Rock Paper Scissor Lizard Spock'
    end

    scenario 'Page has a form to insert the name' do
      expect(page).to have_field 'name_field'
    end

    scenario 'Page has a play! button' do
      expect(page).to have_button 'play_button'
    end

  end


  feature 'Login Process:' do

    before :each do
      login_to_game
    end

    scenario 'Player username is successfully transmitted' do
      expect(page).to have_content TEST_PLAYER_NAME
    end

  end

end
