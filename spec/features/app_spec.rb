feature 'Testing:' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors'
  end
end

feature 'Name entry:' do
  scenario 'user can enter name' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    expect(page).to have_content 'Dog vs. Computer'
  end
end


feature 'Gameplay:' do

  scenario 'user presented with options' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    expect(page).to have_content 'Rock, Paper or Scissors?'
  end

  scenario 'user can pick move rock' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Dog says Rock!'
  end

  scenario 'user can pick move paper' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Dog says Paper!'
  end

  scenario 'user can pick move scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Dog'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Dog says Scissors!'
  end
end
