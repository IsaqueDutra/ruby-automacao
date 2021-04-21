


describe 'forms' do

    it 'login com sucesso' do
        visit '/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true 

        #Pergunta se na string contem o elemento "Texto"
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        
        #Pergunta se no elemento contem o texto
         expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        sleep 1
    end

end