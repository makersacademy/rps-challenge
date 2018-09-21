feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to RPS!'
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Robbie'
    click_button 'Submit'
    expect(page).to have_content 'Robbie PREPARE TO FIGHT!!'
  end

  scenario 'check page has RPS buttons' do
    visit('/')
    fill_in :player_1_name, with: 'Robbie'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

end

feature 'fight' do
  scenario 'choosing Rock' do
    visit('/')
    fill_in :player_1_name, with: 'Robbie'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You chose rock!!'
  end
  scenario 'choosing Paper' do
    visit('/')
    fill_in :player_1_name, with: 'Robbie'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You chose paper!!'
  end
  scenario 'choosing Rock' do
    visit('/')
    fill_in :player_1_name, with: 'Robbie'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You chose scissors!!'
  end

end
