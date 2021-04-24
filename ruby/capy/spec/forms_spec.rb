describe 'forms' do
  before(:each) do
    visit '/login'
  end

  it 'login com sucesso' do

    #fill_in preeencha o campo
    #with com o texto
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvis!'

    #clica no botão
    click_button 'Login'

    expect(find('#flash').visible?).to be true

    #Pergunta se na string contem o elemento "Texto"
    #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    #Pergunta se no elemento contem o texto
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it 'usuario incorreta' do
    fill_in 'userId', with: 'starc'
    fill_in 'password', with: 'jarvis!'
    click_button 'Login'
    expect(find('#flash-messages')).to have_content 'O usuário informado não está cadastrado!'
  end

  it 'senha incorreta' do
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvys'
    click_button 'Login'
    expect(find('#flash-messages')).to have_content 'Senha é invalida!'
  end
end
