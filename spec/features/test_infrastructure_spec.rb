feature 'Testing infrastructure' do

  scenario 'Sinatra correctly set up' do
    log_on
    expect(page).to have_content 'WORKING'
  end

end
