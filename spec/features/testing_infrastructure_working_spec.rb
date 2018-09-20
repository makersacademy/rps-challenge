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
    expect(page).to have_content 'Robbie, PREPARE TO FIGHT!!'
  end
end
