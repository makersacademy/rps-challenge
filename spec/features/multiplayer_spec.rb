feature 'multiplayer game' do
  scenario 'player 1 will see waiting screen' do
    visit '/'
    fill_in('first_name', with: 'ken')
    click_button 'Begin Game'
    click_button 'Multiplayer'
    expect(page).to have_content 'Waiting'
  end

# Again session tests
  xscenario 'player 1 will enter game when player 2 joins' do
    visit '/'
    fill_in('first_name', with: 'ken')
    click_button 'Begin Game'
    click_button 'Multiplayer'
    session do
      visit '/'
      fill_in('first_name', with: 'zhou')
      click_button 'Begin Game'
      click_button 'Multiplayer'
    end
    expect(current_path).to eq '/multiplayer'
  end

  xscenario 'player 1 wins' do
    visit '/'
    fill_in('first_name', with: 'ken')
    click_button 'Begin Game'
    click_button 'Multiplayer'
    visit 'Multiplayer'
    click_button 'Go!'
    session do
      visit '/'
      fill_in('first_name', with: 'zhou')
      click_button 'Begin Game'
      click_button 'Multiplayer'
      visit 'Multiplayer'
      select 'Scissor', from: 'rps'
      click_button 'Go!'
    end
    expect(page).to have_content 'You win!'
  end

  def session
    old_session = Capybara.session_name
    Capybara.session_name = :session_2
    yield
    Capybara.session_name = old_session
  end
end