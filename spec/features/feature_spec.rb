feature 'testing features' do

  scenario 'user should see Rock Paper Scissors when they load the web page' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors!'
  end

end
