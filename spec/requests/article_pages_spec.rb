require 'spec_helper'

describe "Article pages" do 

  subject { page }

  describe "index" do
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
    	@article = user.articles.create(title: "The title", body: "The body")
      visit articles_path
    	# puts page.body
    end

    it { should have_title('All Articles') }
    it { should have_content('All Articles') }
    it { should have_content(@article.title) }
    it { should have_link('Create a New Article', href: new_article_path) }
    it { should have_link(@article.title, href: article_path(Article.first)) }
  end

  describe "view article" do

    let(:user) { FactoryGirl.create(:user) }
    let(:article) { FactoryGirl.create(:article, user: user, created_at: 3.hours.ago) }

    before { visit article_path(article) }

    it { should have_content(article.title) }
    it { should have_content(article.body) }
    it { should have_title(article.title) }
    # it { should have_content(user.name) }
    # it { should have_link(user.name, href: user_path(user)) }

  end

  describe "new article" do

    let(:user) { FactoryGirl.create(:user) }

    before do 
      sign_in user
      visit new_article_path
    end

    let(:submit) { "Create Article" }

    it { should have_title('New Article') }
    it { should have_content('New Article') }

    describe "with invalid information" do
      it "should not create an article" do
        expect { click_button submit }.not_to change(Article, :count)
      end

      describe "after submission" do
        before { click_button submit }

        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "Title", with: "Title"
        fill_in "Body", with: "Body"
      end

      it "should create an article" do
        expect { click_button submit }.to change(Article, :count).by(1)
      end
    end
  end

end