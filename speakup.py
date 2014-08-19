import web
from db_model import *

web.config.debug=False

urls=(
    '/','Index',
    '/login','Login',
    '/signup','Signup',
    '/create','Create',
    '/show/(\d+)','Show',
    '/edit/(\d+)','Edit',
    '/delete/(\d+)','Delete',
    '/logout','Logout'
)


app=web.application(urls,globals())
store=web.session.DiskStore('sessions')
session=web.session.Session(app,store,initializer={'login':False,'userid':None})

globals_t= {
    'content': session
}

render=web.template.render("templates",base="base",globals=globals_t)

class Index:
    def GET(self):
        posts=get_all_post()
        return render.index(posts)

class Login:
    def GET(self):
        session.login=True
        print session.login

class Signup:
    pass

class Create:
    pass

class Show:
    pass

class Edit:
    pass

class Delete:
    pass

class Logout:
    def GET(self):
        session.kill()

if __name__=='__main__':
    app.run()
