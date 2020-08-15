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
          "ip_ip": {
            "operator": "eq",
            "value": "8.8.8.8"
          }
        },
        {
          "ip_domain": {
            "operator": "eq",
            "value": "i.ua"
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
