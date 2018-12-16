feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :user, with: 'Manu'
    select('SCISSORS')
    click_button 'Play'
    expect(page).to have_content 'Manu'
  end

  scenario 'choosing move' do
    visit('/')
    fill_in :user, with: 'Manu'
    select('SCISSORS')
    click_button 'Play'
    expect(page).to have_content 'scissors'
  end
end
