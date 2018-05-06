feature 'check login', :feature do

  scenario 'user logs in' do
    sign_in
    expect(page).to have_content("Hey there George!")
  end

  scenario 'user already logged in' do
    sign_in
    visit '/'
    expect(page).to have_content("Hey there George!")
  end

  scenario 'selects single player mode' do
    sign_in
    click_button("1 player")
    expect(page.title).to eq "RPSLS"
    expect(page.find('div', class: 'player1_info').text).to eq "George: 0"
    expect(page.find('div', class: 'player2_info').text).to eq "The Computer: 0"
  end
end
