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
end