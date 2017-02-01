# spec/controllers/groups_controller_spec.rb
require 'rspec/rails'

describe GroupsController do

  describe "GET index" do
    subject { get :index }
    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("groups/index")
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

end