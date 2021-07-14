RSpec.describe Spyse::Client::Domain, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.domain.get("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          "dns_a": {
            "operator": "eq",
            "value": "8.8.8.8"
          }
        },
      ]
    }

    it do
      res = api.domain.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
