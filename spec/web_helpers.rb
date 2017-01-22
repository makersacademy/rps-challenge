def name_and_play
  visit('/')
  fill_in :name, with: 'Olwen'
  click_button "Submit name"
end
