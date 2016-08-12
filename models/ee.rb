class Post < ActiveRecord::Base 
end 

get '/posts' do
  erb :new_post
end

post '/posts/create' do
  erb :show_post
end

put '/posts/:id/update' do
  @post = Post.find(params[:id])
  @post.update(params[:title], params[:message])
  @post.save

  erb :show_post
end

delete '/posts/:id/destroy' do
  @post = Post.find(params[:id])
  @post.delete!

  erb :show_post
end