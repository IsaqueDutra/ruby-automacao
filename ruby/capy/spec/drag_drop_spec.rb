describe 'Drag and Drop', :drag do

    before(:each) do
        visit '/drag_and_drop'
      end

  it 'Homem aranha percente ao time stark' do
  
    stark = find('.team-stark .column')
    spiderman = find('img[alt$=Aranha]')

    spiderman.drag_to stark


    expect(stark).to have_css 'img[alt$=Aranha]'
end

after(:each) do
    sleep 3
end
end
