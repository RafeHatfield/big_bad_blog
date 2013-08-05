require 'spec_helper'

describe Article do

  let(:user) { FactoryGirl.create(:user) }
  before { @article = user.article.build(body: "I am the body.", title: "I am a title") }

  subject { @article }

  it { should respond_to(:body) }
  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @article.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank body" do
    before { @article.body = " " }
    it { should_not be_valid }
  end

  describe "with blank title" do
    before { @article.title = " " }
    it { should_not be_valid }
  end

end