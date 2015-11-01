feature 'Register name' do

  scenario 'I can register my name to play' do
    register_and_play 'Chuka'
    expect(page).to have_content('Welcome Chuka!')
  end
end
