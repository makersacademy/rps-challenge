feature 'Choice page' do
  before(:each) { sign_in }

  scenario 'user can choose rock' do
    click_button 'rock'
    expect(page).to have_content 'test name chose rock!'
  end

  scenario 'user can choose paper' do
    click_button 'paper'
    expect(page).to have_content 'test name chose paper!'
  end

  scenario 'user can choose scissors' do
    click_button 'scissors'
    expect(page).to have_content 'test name chose scissors!'
  end
end
