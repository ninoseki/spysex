RSpec.describe Spyse::Client::AS, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.as.get("13335")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          ip: {
            operator: "eq",
            value: "8.8.8.8"
          }
        },
      ]
    }

    it do
      res = api.as.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
