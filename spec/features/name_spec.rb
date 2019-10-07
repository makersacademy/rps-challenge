feature 'Submits Name' do
  scenario 'Takes the name of the marketeer' do
    sign_in_and_play
    expect(page).to have_content "Jon Snow" 
  end
end
