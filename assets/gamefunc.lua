function SureCheck(event,t)
    if TASK.lock('sureCheck_'..event,t or 1) then
        MSG('info',Text.sureText[event],t or 1)
    else
        return true
    end
end

function SaveConf()
    FILE.save({
        system=CONF._system,
        game_brik=CONF.game_brik,
        misc=CONF.misc,
    },'conf/config','-json')
end

IsMouseDown=love.mouse.isDown
IsKeyDown=love.keyboard.isDown
function IsCtrlDown() return IsKeyDown('lctrl','rctrl') end
function IsShiftDown() return IsKeyDown('lshift','rshift') end
function IsAltDown() return IsKeyDown('lalt','ralt') end
