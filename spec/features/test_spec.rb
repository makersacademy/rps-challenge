feature 'Enter name/pick weapon' do
  scenario 'entering name' do
    visit('/')
    fill_in :Name, with: 'Phil'
    click_button 'Play'
    expect(page).to have_content 'Hello Phil'
  end

  scenario 'picking weapon' do
    visit('/')
    select 'Rock', :from => "Weapon_choice"
    click_button 'Play'
    expect(page).to have_content 'You picked Rock'
  end
end
