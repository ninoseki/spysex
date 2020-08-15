RSpec.describe Spyse::Client::Cert, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.cert.get("7c552ab044c76d1df4f5ddf358807bfdcd07fa57")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          "cert_issuer_country": {
            "operator": "eq",
            "value": "USA"
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
