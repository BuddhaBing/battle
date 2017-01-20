describe 'Battle - ' do
  feature 'Switching turns - ' do
    context 'seeing the current turn' do
      scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "Link's turn"
      end
      scenario 'after Player 1 has attacked' do
        sign_in_and_play
        attack_and_return
        expect(page).not_to have_content "Link's turn"
        expect(page).to have_content "Ganon's turn"
      end
    end
  end
end
