RSpec.describe "GET /api/articles/:id", type: :request do
  let(:registered_user) { create(:registered_user) }
  let(:registered_user_headers) { registered_user.create_new_auth_token }
  let(:article) {create(:article)}

  describe "registered user can successfully" do
    describe "read first free article" do
      before do
        get "/api/articles/#{article.id}"
      end

      it "is expected to return a 200 status" do
        expect(response).to have_http_status 200
      end

      it "is expected to respond with the title" do
        expect(response_json["article"]["title"]).to eq "MyTitle"
      end
    end
  end
end