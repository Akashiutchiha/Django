import imp


import turtle
turtle.speed(10)
turtle.color('yellow')
turtle.bgcolor('red')
b = 200
while b > 0 :
    turtle.left(b)
    turtle.forward(b*3)
    b = b - 1