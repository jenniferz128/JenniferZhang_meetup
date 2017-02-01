require "spec_helper"

describe UsersController do
  describe "POST #import" do
    it "redirects to the home page" do
      allow(User).to receive(:import).with("users.csv")
      post :import, file: "users.csv"
      expect(response).to redirect_to root_url
    end

    it "adds a flash notice" do
      allow(User).to receive(:import).with("users.csv")
      post :import, file: "users.csv"
      expect(flash[:notice]).to eq "User data updated"
    end

    it "imports the user file" do
      expect(User).to receive(:import).with("users.csv")
      post :import, file: "users.csv"
    end
  end
end