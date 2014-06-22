require 'rails_helper'

describe API::V1::RubricsController do
  describe "GET #index" do
    it "returns all the rubrics" do
      rubrics = FactoryGirl.build_stubbed_list(:rubric, 3)
      allow(Rubric).to receive(:all) { rubrics }

      get :index

      expect(json).to be_json_eq ActiveModel::ArraySerializer.new(rubrics, root: :rubrics)
    end
  end
end
