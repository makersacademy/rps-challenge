feature 'play page links' do

  scenario 'has the Rock' do
    visit('/')
    fill_in :name1, with: 'Heraldo'
    click_button 'Submit'
    expect(page).to have_link(:href => "/combat", :alt => "Rock")
  end

  scenario 'has Paper' do
    visit('/')
    fill_in :name1, with: 'Heraldo'
    click_button 'Submit'
    expect(page).to have_link(:href => "/combat", :alt => "Paper")
  end

  scenario 'has Scissors' do
    visit('/')
    fill_in :name1, with: 'Heraldo'
    click_button 'Submit'
    expect(page).to have_link(:href => "/combat", :alt => "Scissors")
  end

end
