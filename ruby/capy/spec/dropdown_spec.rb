describe "caixa de opções", :dropdown do
  it "item especifico simples" do
    visit "/dropdown"
    select("Steve Rogers", from: "dropdown")
    sleep 2 #temp
  end

  it "item especifico com o find" do
    visit "/dropdown"

    drop = find(".avenger-list")
    drop.find("option", text: "Bruce Banner").select_option
    sleep 2 #temp
  end

  it "qualquer item", :sample do
    visit "/dropdown"

    drop = find(".avenger-list")
    drop.all("option").sample.select_option
    sleep 2 #temp
  end
end
