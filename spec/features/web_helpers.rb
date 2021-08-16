def ready_to_play
  visit('/')
  fill_in :name, with: 'Dave'
  click_button('submit')
end
