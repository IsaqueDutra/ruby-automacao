describe "caixa de opções", :dropdown do
  before(:each) do
    visit "/dropdown"
  end

  it "item especifico simples" do
    select("Steve Rogers", from: "dropdown")
    sleep 2 #temp
  end

  it "item especifico com o find" do
    drop = find(".avenger-list")
    drop.find("option", text: "Bruce Banner").select_option
    sleep 2 #temp
  end

  it "qualquer item", :sample do
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
    sleep 2 #temp
  end
end
