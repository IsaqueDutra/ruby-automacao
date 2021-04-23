describe "caixa de opções", :dropdown do
  before(:each) do
    visit "/dropdown"
  end

  it "item especifico simples" do
    select("Steve Rogers", from: "dropdown")
  end

  it "item especifico com o find" do
    drop = find(".avenger-list")
    drop.find("option", text: "Bruce Banner").select_option
  end

  it "qualquer item", :sample do
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end

  after(:each) do
    sleep 1
  end
end
