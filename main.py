from ursina import *

app = Ursina()

camera.orthographic = True
camera.fov = 10

planet = Entity(
    model="sphere", collider="sphere", color=color.orange, position=(0, 2, 0)
)

speed = Vec3(0, 0, 0)
acceleration = Vec3(0, -9.81, 0)
bounce = 0.8

half_width = camera.fov * window.aspect_ratio / 2
half_height = camera.fov / 2
thickness: float = 1.0

barriers = []

barriers.append(
    Entity(
        model="cube",
        collider="box",
        scale=(half_width * 2, thickness, 0.1),
        position=(0, -half_height, 0),
        visible=False,
    )
)

barriers.append(
    Entity(
        model="cube",
        collider="box",
        scale=(half_width * 2, thickness, 0.1),
        position=(0, half_height, 0),
        visible=False,
    )
)

barriers.append(
    Entity(
        model="cube",
        collider="box",
        scale=(thickness, half_height * 2, 0.1),
        position=(-half_width, 0, 0),
        visible=False,
    )
)

barriers.append(
    Entity(
        model="cube",
        collider="box",
        scale=(thickness, half_height * 2, 0.1),
        position=(half_width, 0, 0),
        visible=False,
    )
)


def update():
    global speed
    speed += acceleration * time.dt
    planet.position += speed * time.dt

    for barrier in barriers:
        hit_info = planet.intersects(barrier)
        if hit_info.hit:
            planet.position -= speed * time.dt
            normal = hit_info.normal
            speed = speed - (2 * speed.dot(normal)) * normal
            speed *= bounce


app.run()
