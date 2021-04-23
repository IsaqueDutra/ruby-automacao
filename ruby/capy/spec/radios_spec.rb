describe "Botões de Radio", :radio do
  before(:each) do
    visit "/radios"
  end

  it "seleção por ID" do
    choose("cap")
  end

  it "seleção por value" do
    find("input[value=iron-man]").set(true)
  end

  it "outras estregias" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 2
  end
end
