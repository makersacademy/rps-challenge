feature 'Play page loads' do

  scenario 'with option to choose Rock' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button ('Rock!')
  end

  scenario 'with option to choose Paper' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button ('Paper!')
  end

  scenario 'with option to choose Scissors' do
    visit '/'
    click_button('Go!')
    expect(page).to have_button ('Scissors!')
  end
end