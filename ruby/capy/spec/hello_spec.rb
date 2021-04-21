describe "Primeiros passos" do

    it "visitar a pagina" do 
    visit "/"
        expect(page.title).to eql "Training Wheels Protocol"

        sleep 1#temporario

    end

end

