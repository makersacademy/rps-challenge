feature 'Select RPS' do

  before do
    submit_name
  end

  scenario 'players name is on the second page' do
    expect(page).to have_content 'Welcome Jane!'
  end

end
