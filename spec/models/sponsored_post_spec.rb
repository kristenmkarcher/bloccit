require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

    let(:title) { RandomData.random_sentence }
    let(:body) { RandomData.random_paragraph }
    let(:price) { Random.rand(51) }

    let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: price) }
      it { is_expected.to belong_to(:sponsored_post) }

    describe "attributes" do
      it "has title and body and price attributes" do
        expect(sponsored_post).to have_attributes(title: title, body: body, price: price)
      end
      it "is public by default" do
        expect(sponsored_post.public).to be(true)
      end
    end
  end
    
