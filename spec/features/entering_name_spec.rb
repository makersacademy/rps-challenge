feature 'adding player name' do

  scenario 'visiting name entering page' do
    visit('/')
    expect(page).to have_content "Sign in to play"
  end



end
