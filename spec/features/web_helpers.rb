def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Link'
  fill_in :player_2_name, with: 'Ganon'
  click_button 'Submit'
end

def attack_and_return
  click_button "attack"
  click_button "OK"
end
