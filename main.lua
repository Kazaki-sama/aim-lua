_G.love=require("love")

function love.load()
    target={}
    target.x=300
    target.y=300
    target.radius={}

    score=0
    time=60

    gamefont = love.graphics.newFont(40)
end

function love.update(dt)
    
end


function love.draw()
    love.graphics.setColor(.2,.3,.6)
    love.graphics.circle('fill', target.x , target.y , target.radius)
    love.graphics.setColor(1,1,1)
    love.graphics.setFont(gamefont)
    love.graphics.print(score,0,0)
    love.graphics.print(time,0,40)
end

function love.mousepressed(x,y,button, istouch, presses)
    if button == 1 then
        local mousetotarget = distancebetween(x,y, target.x, target.y)
        
        if mousetotarget<target.radius then
            score=score+1
            target.x=math.random(target.radius,love.graphics.getWidth()-target.radius)
            target.y=math.random(target.radius,love.graphics.getHeight()-target.radius)
            
            
             

        end
        
    end
end

function distancebetween(x1,y1,x2,y2)
    return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end
