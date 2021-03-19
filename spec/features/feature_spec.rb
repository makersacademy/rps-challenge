  feature 'You can enter your name to start game' do
    scenario 'enter your name' do
      visit('/')
      expect(page).to have_field("name")
    end
  end

  feature 'You can submit your name to start game' do
    scenario 'submit your name' do
      visit('/')
      expect(page).to have_button("submit")
    end
  end

  feature 'Submitting your name takes you to a play page' do
    scenario 'homepage returns content' do
    fill_in_name_and_submit
    expect(page).to have_content  "Max Vs Computer"
    end
  end
