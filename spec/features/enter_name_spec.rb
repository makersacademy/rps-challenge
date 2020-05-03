feature 'Enter name' do
  scenario 'User can enter name and see it' do
    visit('/')
    fill_in :player, with: 'Catriona'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Catriona!'
    expect(page).to have_content 'To play, please click on your choice'
  end
end

feature 'Selection' do
  scenario 'User can make their choice' do
    visit('/')
    fill_in :player, with: 'Catriona'
    click_button 'Submit'
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'User can see their choice' do
    visit('/')
    fill_in :player, with: 'Catriona'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content 'Catriona chose rock'
  end
end
