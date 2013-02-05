class PagesController < ApplicationController
  def home
    @posts = Post.order("created_at DESC").limit(3)
  end

  def about
  end

  def contacts
  end
end
