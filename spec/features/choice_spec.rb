feature 'choice' do
  scenario 'player choses paper' do
    visit '/'
    fill_in 'name', with: 'kenny'
    click_button "Submit"
    select 'paper', from: 'choice'
    click_button "Submit"
    expect(page).to have_content("kenny you have chosen paper")
  end

  scenario 'player choses rock' do
    visit '/'
    fill_in 'name', with: 'kenny'
    click_button "Submit"
    select 'rock', from: 'choice'
    click_button "Submit"
    expect(page).to have_content("kenny you have chosen rock")
  end

  scenario 'player choses scissors' do
    visit '/'
    fill_in 'name', with: 'kenny'
    click_button "Submit"
    select 'scissors', from: 'choice'
    click_button "Submit"
    expect(page).to have_content("kenny you have chosen scissors")
  end
end
