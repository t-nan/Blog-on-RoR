require 'rails_helper'

describe Article do

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "assotiations" do
    it { should have_many :comments }
  end

  describe "#subject" do

    it "returns the article title" do

    # создаем объект хитрым способом

    article=create(:article,title:'Hello it is me you looking for')

    # assert,проверка

    expect(article.subject).to eq 'Hello it is me you looking for'

   end

  end


  describe "#last_comment" do
    it "returns the last comment" do
      #создаем статью,но в этот раз с комментариями
      article=create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "Comment body 3"
    end
  end

end
