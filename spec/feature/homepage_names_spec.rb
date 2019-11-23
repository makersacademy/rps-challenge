feature 'Testing the homepage name form and redirect' do

  scenario 'Displays the title' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end

  scenario 'Displays the name on a new page' do
    visit('/')
    click_button 'OK'
    expect(page).to have_content 'Jo'
  end
end
