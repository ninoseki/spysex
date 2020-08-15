RSpec.describe Spyse::Client::Domain, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.domain.get("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#subdomain" do
    it do
      res = api.domain.subdomain("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#related_domains" do
    it do
      res = api.domain.related_domains("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#related_ips" do
    it do
      res = api.domain.related_ips("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    let(:search_params) {
      [
        {
          "domain_dns_a": {
            "operator": "eq",
            "value": "8.8.8.8"
          }
        },
        {
          "domain_name": {
            "operator": "eq",
            "value": "google.com"
          }
        }
      ]
    }

    it do
      res = api.domain.search(search_params)
      expect(res).to be_a(Hash)
    end
  end
end
