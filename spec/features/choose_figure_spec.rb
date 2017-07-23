feature 'Choose your figure' do
  before(:each) { sign_in_and_play }
  let(:name) { 'Oleg' }

  scenario 'choose rock' do
    click_button('Rock')
    expect(page).to have_content "#{name}: Rock"
  end

  scenario 'choose paper' do
    click_button('Paper')
    expect(page).to have_content "#{name}: Paper"
  end

  scenario 'choose scissors' do
    click_button('Scissors')
    expect(page).to have_content "#{name}: Scissors"
  end
end
