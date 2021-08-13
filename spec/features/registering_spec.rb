require './app'

describe 'Registering', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  it 'allows user to submit a name and shows it to them' do
    sign_in_and_start
    expect(page).to have_content "Bob"
  end
end
