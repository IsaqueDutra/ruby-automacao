describe 'mouse Hover', :hovers do
  before(:each) do
    visit '/hovers'
  end

  it 'quando passo o mouse sobre o blade' do
    card = find ('img[alt=Blade]')
    card.hover
  end

  it 'quando passo o mouse sobre o pantera negra' do
    card = find ('img[alt="Pantera Negra"]')
    card.hover
  end


  it 'quando passo o mouse sobre o pantera negra' do
    card = find ('img[alt="Homem Aranha"]')
    card.hover
  end

  after(:each) do
    
  end
end
