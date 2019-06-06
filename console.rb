require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )

require_relative( "./models/student" )
also_reload( "models/*" )

get "/students" do #INDEX
@student = Student.all()
erb( :index )
end

get "/students/new" do #NEW
erb( :new )
end

get "/students/:id" do #SHOW
@student = Student.find( params[:id].to_i )
erb( :show )
end

post "/students" do # CREATE
@student = Student.new( params )
@student.save()
erb(:create)
end

get "/students/:id/edit" do #EDIT
@student = Student.find( params[:id].to_i )
erb( :edit )
end

post "/students/:id" do #UPDATE
@student = Student.new( params[:id].to_i )
redirect "/students"
erb(:show)
end

post "/students/:id/delete" do # DELETE
  @student = Student.find( params[:id].to_i )
  student.delete()
  redirect "/students"
end
