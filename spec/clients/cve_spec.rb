RSpec.describe Spyse::Client::CVE, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.cve.get("CVE-2018-11776")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          "id": {
            "operator": "eq",
            "value": "CVE-2017-5754"
          }
        }
      ]
    }

    it do
      res = api.cve.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
