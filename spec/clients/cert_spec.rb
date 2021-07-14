RSpec.describe Spyse::Client::Cert, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.cert.get("de0f6029218777b6cc16cafeb7d8ecf321bede62b0ec6ab2b4b1690460ff2158")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          issuer_country: {
            operator: "eq",
            value: "USA"
          }
        },
      ]
    }

    it do
      res = api.cert.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
