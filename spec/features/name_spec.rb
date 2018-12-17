feature 'Enter Name' do

  scenario 'expect form' do
    visit('/')
    expect(page).to have_css('form')
  end

  scenario 'fills in name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Socks!'
  end
end
