feature '/ content check' do

  scenario 'Running the app to see if it displays the page header' do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors Makers Academy, Week 3
    (Weekend assignment) Irfan Durrani, Feb '18 Cohort"
  end

  scenario 'Running the app to see if it displays the page content' do
    visit('/')
    expect(page).to have_content " Player Name Please enter the
     name and click play to continue. Play"
  end

end
