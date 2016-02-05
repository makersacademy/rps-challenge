feature 'Enter name' do

  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'ENTER'
  end

  scenario 'choose hand' do
    visit('/')
    fill_in :player_name, with: 'Matt'
    click_button 'ENTER'
    expect(page).to have_content 'CHOOSE YOUR WEAPON MATT'
    end
end
