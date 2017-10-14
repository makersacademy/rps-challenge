def ready_to_play
  visit '/'
  fill_in :name, with: 'David'
  click_button 'Submit'
end