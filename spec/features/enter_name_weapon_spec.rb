feature 'Enter name/pick weapon' do
  scenario 'entering name' do
    visit('/')
    fill_in :name, with: 'Phil'
    click_button 'Play'
    expect(page).to have_content 'Hello Phil'
  end

  scenario 'user picking weapon' do
    visit('/')
    select 'Rock', :from => "weapon_choice"
    click_button 'Play'
    expect(page).to have_content 'You picked Rock'
  end

  scenario 'computer picking weapon' do
    visit('/')
    select 'Rock', :from => "weapon_choice"
    allow_any_instance_of(RockPaperScissors).to receive(:computer_choice).and_return("Scissors")
    click_button 'Play'
    expect(page).to have_content 'Computer picked Scissors'
  end
end
