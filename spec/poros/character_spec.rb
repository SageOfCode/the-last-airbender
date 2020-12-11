require "rails_helper"

RSpec.describe Character do
  it "exists" do
    data = {
      name: "Appa",
      allies: ["Aang", "Katara"],
      enemies: ["Azula", "Momo"],
      affiliation: 'Air Nomads'
    }

    appa = Character.new(data)

    expect(appa).to be_a Character
    expect(appa.name).to eq("Appa")
    expect(appa.allies).to eq("Aang, Katara")
    expect(appa.enemies).to eq("Azula, Momo")
    expect(appa.affiliation).to eq("Air Nomads")
  end
end