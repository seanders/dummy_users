enable :sessions

get '/' do
  erb :index
end

get '/create_user' do
  erb :create_user
end

post '/create_user' do
  User.create(params)
  redirect to('/')
end

get '/login' do
  erb :login
end

post '/login' do
 @the_user = User.authenticate(params[:email], params[:password])
if @the_user
  session[:value] = "cleared"
  puts session[:value]
end
  erb :index
end

get '/logout' do
  p session[:value]
  session[:value] = nil
  p session[:value]
  erb :index
end

get '/members_only' do
  if session[:value] == 'cleared'
    erb :members_only
  else
    erb :index
  end
end