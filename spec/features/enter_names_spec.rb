feature 'Enter name' do
  before do
    visit '/'
  end

  scenario 'User is asked for name' do
    expect(page).to have_content "please enter your name"
  end

  scenario 'Can submit name and sees a welcome' do
    sign_in_and_play
    expect(page).to have_content "Let's begin Caitlin!"
  end
end
