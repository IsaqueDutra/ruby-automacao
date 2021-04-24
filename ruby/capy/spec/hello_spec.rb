describe 'Primeiros passos' do
  before(:each) do
    visit '/'
  end

  it 'visitar a pagina' do
    expect(page.title).to eql 'Training Wheels Protocol'
  end
end
