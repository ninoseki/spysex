RSpec.describe Spyse::Client::IP, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.ip.get("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          "geo_country": {
            "operator": "eq",
            "value": "USA"
          }
        }
      ]
    }

    it do
      res = api.ip.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
