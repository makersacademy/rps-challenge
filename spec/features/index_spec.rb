describe 'index.erb' do
  feature 'Home Page' do
    before(:each) { go_to_homepage }
    scenario 'has the title of RPS Game' do
      expect(page).to have_content('Rock, Paper, Scissors Game')
    end

    scenario 'asks for players name' do
      expect(page).to have_content('Please enter your name:')
      expect(page).to have_field('name')
      expect(page).to have_selector("input", id: 'submit')
    end
  end

  feature 'Submit Button' do
    scenario 'takes player to Play screen' do
      enter_name_and_submit
      expect(page.current_url).to include('/play')
    end
  end
end
