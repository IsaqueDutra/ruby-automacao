


describe 'forms' do

    it 'login com sucesso' do
        visit '/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true 
        sleep 1
    end

end