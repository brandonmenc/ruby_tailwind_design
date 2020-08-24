require "roda"

class App < Roda
  plugin :partials
  plugin :public
  plugin :render
  plugin :render_each

  route do |r|
    r.public

    r.is "foo" do
      view("foo")
    end
  end
end
