feature 'Selecting choice' do
   scenario 'Player can select Rock' do
    visit('/')
    fill_in :name, with: 'Mel'
    click_button 'Submit'
    page.select 'Rock', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose rock'
  end

  scenario 'Player can select Paper' do
    visit('/')
    fill_in :name, with: 'Mel'
    click_button 'Submit'
    page.select 'Paper', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose paper'
  end

  scenario 'Player can select Scissors' do
    visit('/')
    fill_in :name, with: 'Mel'
    click_button 'Submit'
    page.select 'Scissors', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Mel chose scissors'
  end

 end
