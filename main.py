from ursina import *

# create a window
app = Ursina()

planet = Entity(model="sphere", color=color.orange)

speed = 0
acceleration = -9.8


def update():
    global speed
    planet.y += speed * time.dt
    speed += acceleration * time.dt


app.run()
