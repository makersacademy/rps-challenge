feature 'Computer has three attack options' do

  before do
    sign_in_and_play
  end

  scenario 'Computer can choose a random option' do
    click_button 'rock'
    expect(page).to have_content('Computer chose')
  end
end
