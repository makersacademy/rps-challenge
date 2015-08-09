feature 'can start a game' do
  scenario 'player can register their name' do
    visit '/'
    expect(page).to have_content "Please enter your name"
  end

  scenario 'player see welcome after entering name' do
      visit '/'
      fill_in('first_name', with: 'Zhou')
      click_button 'Begin Game'
      expect(page).to have_content 'Welcome Zhou'
  end

  scenario 'player can select play against computer' do
    visit '/'
    fill_in('first_name', with: 'Ken')
    click_button 'Begin Game'
    click_button 'Against Computer'
    expect(current_path).to eq '/botgame'
  end

  scenario 'player can select play multiplayer' do
    visit '/'
    fill_in('first_name', with: 'Ken')
    click_button 'Begin Game'
    click_button 'Multiplayer'
    expect(current_path).to eq '/lobby'
  end

  def session
    old_session = Capybara.session_name
    Capybara.session_name = :session_2
    yield
    Capybara.session_name = old_session
  end
end