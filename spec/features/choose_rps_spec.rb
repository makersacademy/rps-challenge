feature 'Enter names' do
  scenario 'see R,P or S' do
    visit('/')
    fill_in :name, with: 'James'
    click_button 'Go'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scisscors'
  end

  scenario 'choose RPS and get confirmation' do
  end

  scenario 'have to make a selection' do
  end


end 