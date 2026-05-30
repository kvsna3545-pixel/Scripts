--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

local scripts = {
    {name = "Doge.txt", code = [[

local function QuaternionFromCFrame(cf)

                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()

                local trace = m00 + m11 + m22

                if trace > 0 then

                        local s = math.sqrt(1 + trace)

                        local recip = 0.5/s

                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5

                else

                        local i = 0

                        if m11 > m00 then

                                i = 1

                        end

                        if m22 > (i == 0 and m00 or m11) then

                                i = 2

                        end

                        if i == 0 then

                                local s = math.sqrt(m00-m11-m22+1)

                                local recip = 0.5/s

                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip

                        elseif i == 1 then

                                local s = math.sqrt(m11-m22-m00+1)

                                local recip = 0.5/s

                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip

                        elseif i == 2 then

                                local s = math.sqrt(m22-m00-m11+1)

                                local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip

                        end

                end

        end

        local function QuaternionToCFrame(px, py, pz, x, y, z, w)

                local xs, ys, zs = x + x, y + y, z + z

                local wx, wy, wz = w*xs, w*ys, w*zs

                local xx = x*xs

                local xy = x*ys

                local xz = x*zs

                local yy = y*ys

                local yz = y*zs

                local zz = z*zs

                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))

                end  

        local function QuaternionSlerp(a, b, t)

                local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]

                local startInterp, finishInterp;

                if cosTheta >= 0.0001 then

                        if (1 - cosTheta) > 0.0001 then

                                local theta = math.acos(cosTheta)

                                local invSinTheta = 1/math.sin(theta)

                                startInterp = math.sin((1-t)*theta)*invSinTheta

                                finishInterp = math.sin(t*theta)*invSinTheta  

                        else

                                startInterp = 1-t

                                finishInterp = t

                        end

                else

                        if (1+cosTheta) > 0.0001 then

                                local theta = math.acos(-cosTheta)

                                local invSinTheta = 1/math.sin(theta)

                                startInterp = math.sin((t-1)*theta)*invSinTheta

                                finishInterp = math.sin(t*theta)*invSinTheta

                        else

                                startInterp = t-1

                                finishInterp = t

                        end

                end

                return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp

        end  

        function clerp(a,b,t)

                local qa = {QuaternionFromCFrame(a)}

                local qb = {QuaternionFromCFrame(b)}

                local ax, ay, az = a.x, a.y, a.z

                local bx, by, bz = b.x, b.y, b.z  

                local _t = 1-t

                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))

        end

 

do --the animating

plr = game:service'Players'.LocalPlayer

char = plr.Character

mouse = plr:GetMouse()

humanoid = char:findFirstChild("Humanoid")

torso = char:findFirstChild("Torso")

head = char.Head

head.Transparency = 1

if char:FindFirstChild("Pants") then

	char:FindFirstChild("Pants"):Remove()
]
	aba=Instance.new("Pants",char)

	aba.Name = "DogePants"

	aba.PantsTemplate = "http://www.roblox.com/asset/?id=152197220"

else

	aba=Instance.new("Pants",char)

	aba.Name = "DogePants"

	aba.PantsTemplate = "http://www.roblox.com/asset/?id=152197220"

end



if char:FindFirstChild("Shirt") then

	char:FindFirstChild("Shirt"):Remove()

	aba2=Instance.new("Shirt",char)

	aba2.Name = "DogeShirt"

	aba2.ShirtTemplate = "http://www.roblox.com/asset/?id=152196635"

else

	aba2=Instance.new("Shirt",char)

	aba2.Name = "DogeShirt"

	aba2.ShirtTemplate = "http://www.roblox.com/asset/?id=152196635"

end



ra = char:findFirstChild("Right Arm")

la = char:findFirstChild("Left Arm")

rl = char:findFirstChild("Right Leg")

ll = char:findFirstChild("Left Leg")

rs = torso:findFirstChild("Right Shoulder")

ls = torso:findFirstChild("Left Shoulder")

rh = torso:findFirstChild("Right Hip")

lh = torso:findFirstChild("Left Hip")

neck = torso:findFirstChild("Neck")

rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")

anim = char:findFirstChild("Animate")

rootpart = char:findFirstChild("HumanoidRootPart")

camera = workspace.CurrentCamera

if anim then

anim:Destroy()

end

 

 

local rm = Instance.new("Motor", torso)

rm.C0 = CFrame.new(1.5, 0.5, 0)

rm.C1 = CFrame.new(0, 0.5, 0)

rm.Part0 = torso

rm.Part1 = ra

local lm = Instance.new("Motor", torso)

lm.C0 = CFrame.new(-1.5, 0.5, 0)

lm.C1 = CFrame.new(0, 0.5, 0)

lm.Part0 = torso

lm.Part1 = la

 

local rlegm = Instance.new("Motor", torso)

rlegm.C0 = CFrame.new(0.5, -1, 0)

rlegm.C1 = CFrame.new(0, 1, 0)

rlegm.Part0 = torso

rlegm.Part1 = rl

local llegm = Instance.new("Motor", torso)

llegm.C0 = CFrame.new(-0.5, -1, 0)

llegm.C1 = CFrame.new(0, 1, 0)

llegm.Part0 = torso

llegm.Part1 = ll

 

neck.C0 = CFrame.new(0, 1, 0)

neck.C1 = CFrame.new(0, -0.5, 0)

 

 

rj.C0 = CFrame.new()

rj.C1 = CFrame.new()

 

 

local sound = Instance.new("Sound", head)

sound.SoundId = "http://www.roblox.com/asset/?id=130797915"

sound.Volume = 0.8

sound.Looped = true

 

for i,v in pairs(char:children()) do

    if v:IsA("Hat") then

        v:Destroy()

    end

end

 

 

--look of the fox here

game:service'InsertService':LoadAsset(151784320):children()[1].Parent = char

Instance.new("PointLight", head).Range = 10



 

local speed = 0.3

local angle = 0

local sitting = false

local humanwalk = false

local anglespeed = 1

rsc0 = rm.C0

lsc0 = lm.C0

llc0 = llegm.C0

rlc0 = rlegm.C0

neckc0 = neck.C0

 

local controllerService = game:GetService("ControllerService")

local controller = controllerService:GetChildren()[1]

 

controller.Parent = nil

 

Instance.new("HumanoidController", game:service'ControllerService')

Instance.new("SkateboardController", game:service'ControllerService')

Instance.new("VehicleController", game:service'ControllerService')

local controller = controllerService:GetChildren()[1]

mouse.KeyDown:connect(function(k)

    if k == "q" then

        humanwalk = not humanwalk

    end

    if k == "z" then

        if not sound.IsPlaying then

            sound:stop()

            sound.SoundId = "http://www.roblox.com/asset/?id=130802245"

            wait()

            sound:play()

        end

    end

    if k == "x" then

        if not sound.IsPlaying then

            sound:stop()

            sound.SoundId = "http://www.roblox.com/asset/?id=130797915"

            wait()

            sound:play()

        end

    end

    if k == "c" then

        if not sound.IsPlaying then

            sound:stop()

            sound.SoundId = "http://www.roblox.com/asset/?id=149713968"

            wait()

            sound:play()

        end

    end

    if string.byte(k) == 48 then

        humanoid.WalkSpeed = 34

    end

   

end)

mouse.KeyUp:connect(function(k)

   

    if string.byte(k) == 48 then

        humanoid.WalkSpeed = 16

    end

   

end)

 

   

 

while wait() do

    angle = (angle % 100) + anglespeed/10

        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))

        local rscf = rsc0

        local lscf = lsc0

        local rlcf = rlc0

        local llcf = llc0

        local rjcf = CFrame.new()

        local ncf = neckc0

        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))

            local hitz, enz = workspace:findPartOnRay(rayz, char)

            if not hitz then

        if sound.IsPlaying then

            sound:stop()

        end

       

        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then

       

        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, 0)

        rjcf = CFrame.new() * CFrame.Angles(-math.pi/5, math.sin(angle)*0.05, 0)

        rscf = rsc0 * CFrame.Angles(math.pi/1.7+math.sin(angle)*0.1, 0, 0)

        lscf = lsc0 * CFrame.Angles(math.pi/1.7+math.sin(-angle)*0.1, 0, 0)

        rlcf = rlc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.3, 0, 0)

        llcf = llc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.3, 0, 0)

       

        else

       

        ncf = neckc0 * CFrame.Angles(math.pi/14, 0, 0)

        rjcf = CFrame.new() * CFrame.Angles(-math.pi/18, math.sin(angle)*0.05, 0)

        rscf = rsc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.2, 0, 0)

        lscf = lsc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.2, 0, 0)

        rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) CFrame.Angles(-math.pi/14, 0, 0)

        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)

       

        end

    elseif humanoid.Sit then

        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then

        anglespeed = 6

        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)

        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))

        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))

        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))

        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))

        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=135570347" then

        anglespeed = 4

        ncf = neckc0 * CFrame.Angles(math.pi/5-math.abs(math.sin(angle))*0.3, 0, 0)

        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))

        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))

        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))

        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))

        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then

        anglespeed = 2

        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)

        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))

        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))

        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))

        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))

        else

        anglespeed = 1/2

        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)

        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))

        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))

        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))

        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))

        end

    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then

        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then

        anglespeed = 6

            ncf = neckc0 * CFrame.Angles(math.pi/10-math.sin(angle)*0.07, 0, 0)

            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/10, math.sin(angle)*0.001, 0)

            rscf = rsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)

            lscf = lsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)

            rlcf = rlc0 * CFrame.Angles(math.pi/10, math.sin(angle)*0.08, math.rad(6.5))

            llcf = llc0 * CFrame.Angles(math.pi/10, -math.sin(angle)*0.08, -math.rad(6.5))

        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then

            anglespeed = 2

            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3, 0, 0)

            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/20, math.sin(angle)*0.001, 0)

            rscf = rsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)

            lscf = lsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)

            rlcf = rlc0 * CFrame.Angles(math.pi/20, math.sin(angle)*0.08, math.rad(2.5))

            llcf = llc0 * CFrame.Angles(math.pi/20, -math.sin(angle)*0.08, -math.rad(2.5))

        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130802245" then

        anglespeed = 3

        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.07, math.rad(30), 0)

        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)

        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.05, 0, 0)

        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)

        rlcf = rlc0 * CFrame.new(0, -0.1 + math.abs(mvmnt)*0.1, -0.1) * CFrame.Angles(0, math.rad(5), math.rad(5))

        llcf = llc0 * CFrame.Angles(0, math.rad(2.5), math.rad(1))

        else

            if humanwalk then

                        anglespeed = 1/4

        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)

        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)

        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.1, 0, 0)

        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, 0)

        rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.08, math.rad(2.5))

        llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.08, -math.rad(2.5))

                else

        anglespeed = 1/2

        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)

        rjcf = CFrame.new(0, -2, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))

        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))

        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))

        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))

            end

        end

    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 20 then

        if sound.IsPlaying then

            sound:stop()

        end

        if humanwalk then

                                anglespeed = 4

        ncf = neckc0 * CFrame.Angles(math.pi/24, mvmnt*.02, 0)

        rjcf = CFrame.new(0, math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/24, -mvmnt*.02, 0)

        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.25, 0, -math.abs(mvmnt)*0.02)

        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.25, 0, math.abs(mvmnt)*0.02)

        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))

        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))

                else

        anglespeed = 4

        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9, 0, 0)

        rjcf = CFrame.new(0, -1.5+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9, math.sin(mvmnt/2)*0.05, 0)

        rscf = rsc0 * CFrame.new(-.45, 0.2, -.4+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(angle)*0.7, 0, math.rad(5))

        lscf = lsc0 * CFrame.new(.45, 0.2, .1-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(-angle)*0.7, 0, -math.rad(5))

        rlcf = rlc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*0.6, 0, math.abs(mvmnt)*0.025)

        llcf = llc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(angle)*.6, 0, -math.abs(mvmnt)*0.025)

        end

    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then

        if sound.IsPlaying then

            sound:stop()

        end

        if humanwalk then

        anglespeed = 5

        ncf = neckc0 * CFrame.Angles(math.pi/20, math.sin(angle)*.04, 0)

        rjcf = CFrame.new(0, -.4 + math.abs(mvmnt)*0.25, 0) * CFrame.Angles(-math.pi/20, -math.sin(angle)*.08, 0)

        rscf = rsc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) *  CFrame.Angles(math.pi/18+math.sin(angle)*1.5, 0, -math.abs(mvmnt)*0.02)

        lscf = lsc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/18+math.sin(-angle)*1.5, 0, math.abs(mvmnt)*0.02)

        rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))

        llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))

        else

        anglespeed = 5.5

        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9+math.sin(mvmnt/2)*0.05, 0, 0)

        rjcf = CFrame.new(0, -1.3+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9+math.abs(mvmnt/2)*0.1, 0, 0)

        rscf = rsc0 * CFrame.new(-1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, math.rad(5))

        lscf = lsc0 * CFrame.new(1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, -math.rad(5))

        rlcf = rlc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, math.abs(mvmnt)*0.025)

        llcf = llc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, -math.abs(mvmnt)*0.025)

        end

    end

       

    rm.C0 = clerp(rm.C0,rscf,speed)

    lm.C0 = clerp(lm.C0,lscf,speed)

    rj.C0 = clerp(rj.C0,rjcf,speed)

    neck.C0 = clerp(neck.C0,ncf,speed)

    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)

    llegm.C0 = clerp(llegm.C0,llcf,speed)

end

 

 

end

]},
    {name = "DevUzi.txt", code = [[wait(0.001); 



--------------------------------------------------------------------------------------



_clear=function()

        local c={char;bag;gui;};

        for i=1,#c do

                local c=c[i]:children();

                for i=1,#c do

                        if(c[i].Name==name)then

                                c[i].Parent=nil;

                        end;

                end;

        end;

        local n=name..user.Name;

        local c=workspace:children();

        for i=1,#c do

                if(c[i].Name==n)then

                        c[i].Parent=nil;

                end;

        end;

end;



_valid_key=function(object,key)

        return object[key],key;

end;



_new=function(class)

        return function(props)

                if(type(list_base_props)=='table')then

                        for i,v in next,list_base_props do

                                if(props[i]==nil)then

                                        props[i]=v;

                                end;

                        end;

                end;

                

                local object=class;

                

                if(type(class)=='string')then

                        object=Instance.new(class:sub(1,1):upper()..class:sub(2));

                end;

                

                local parent=props[1];

                        props[1]=nil;

                

                for i,v in next,props do

                        local load,res,key=pcall(_valid_key,object,i:sub(1,1):upper()..i:sub(2));

                        if(not load)then

                                load,res,key=pcall(_valid_key,object,i);

                        end;

                        

                        if(key)then

                                t=type(res);

                                s=tostring(res);

                                if(t=='userdata'and s=='Signal '..key)then

                                        if(type(v)=='table')then

                                                for i=1,#v do

                                                        res:connect(v[i]);

                                                end;

                                        else

                                                res:connect(v);

                                        end;

                                else

                                        object[key]=v;

                                end;

                        end;

                end;

                

                if(parent)then

                        object.Parent=parent;

                end;

                

                return object;

        end;

end;



_RGB=function(r,g,b)

        return Color3.new(r/255,g/255,b/255);

end;



_copy=function(o)

        local def=o.archivable;

        o.archivable=true;

        local c=o:clone();

        o.archivable=def;

        return c;

end;



_hum=function(char)

        local hum=char:findFirstChild'Humanoid';

        if(not hum or hum.className~='Humanoid')then

                local c=char:children();

                for i=1,#c do

                        if(c[i].className=='Humanoid')then

                                return c[i];

                        end;

                end;

        else

                return hum;

        end;

end;



_hum_tag=function(hum)

        local c=hum:findFirstChild'creator'or Instance.new('ObjectValue',hum);

                c.Name='creator';

                c.Value=user;

        if(hum.Health==0 and not hum:findFirstChild'killed')then

                Instance.new('BoolValue',hum).Name='killed';

                bullets.clip=bullets.clip+10;

        end;

end;



_hum_dam=function(hum,dam,percent)

        hum.Health=hum.Health-(percent and hum.MaxHealth*(dam*0.01)or dam);

        if(hum.Health<=hum.MaxHealth*0.1)then

                _hum_tag(hum);

        end;

end;



_ray=function(v0,v1,i)

        local mag=(v0-v1).magnitude;

        local ray=Ray.new(v0,(v1-v0).unit*(mag>999 and 999 or mag));

        

        return(type(i)=='table'and workspace.FindPartOnRayWithIgnoreList or workspace.FindPartOnRay)(workspace,ray,i);

end;



_must=function(v0,v1,i)

        local hit,pos=_ray(v0,v1,i);

        return not hit and mouse.target or hit,pos;

end;



_cframe=function(x,y,z,r0,r1,r2)

        return CFrame.Angles(

                math.rad(r0 or 0),

                math.rad(r1 or 0),

                math.rad(r2 or 0)

        )*CFrame.new(x,y,z);

end;



_update=function()

        if(bool_active and not screen.Parent)then

                screen.Parent=gui;

        elseif(not bool_active and screen.Parent)then

                screen.Parent=nil;

        end;

end;



_light=function(v0,v1)

        local mag=(v0-v1).magnitude;

        local len=math.random(2,7);

                len=len>mag/2 and mag/2 or len;

        

        local light=_new'part'{

                cFrame=CFrame.new(v0,v1);

                size=Vector3.new(1,1,1);

                color=_RGB(255,255,0);

                anchored=true;

                inv;

        };

                _new'blockMesh'{

                        scale=Vector3.new(0.2,0.2,len);

                        offset=Vector3.new(0,0,-len/2);

                        light;

                };

                

        local bb=_new'billboardGui'{

                size=UDim2.new(2,0,2,0);

                adornee=light;

                light;

        };

                _new'imageLabel'{

                        image=url:format(109101526);

                        backgroundTransparency=1;

                        size=UDim2.new(1,0,1,0);

                        bb;

                };

                

        _rem(light,0.15);

end;



_rem=function(object,del)

        if(del)then

                delay(del,function()

                        if(object.Parent)then

                                object.Parent=nil;

                        end;

                end);

        else

                pcall(function()

                        if(object.Parent)then

                                object.Parent=nil;

                        end;

                end);

        end;

end;



_blood=function(pos,count)

        for i=1,count do

                local p=_new'part'{

                        rotVelocity=Vector3.new(math.random(),math.random(),math.random())*50;

                        position=pos+Vector3.new(math.random(),math.random(),math.random());

                        velocity=Vector3.new(math.random(),math.random(),math.random())*50;

                        size=Vector3.new(math.random(),math.random(),math.random())/3;

                        color=_RGB(255,0,0);

                        transparency=0.5;

                        canCollide=true;

                        bottomSurface=0;

                        topSurface=0;

                        formFactor=3;

                        locked=true;

                        inv;

                };

                delay(5,function()

                        p.Parent=nil;

                end);

        end;

end;



_make_hue=function()

        h_hue=_new'part'{

                size=Vector3.new(0.25,1.8,0.35);

                color=_RGB(100,100,100);

                formFactor=3;

                name='hue';

                handle;

        };

        hh_weld=_new'weld'{

                c1=_cframe(0,0.5,0);

                part0=handle;

                part1=h_hue;

                handle;

        };

end;



_shot=function(v0,v1)

        if(not time_left)then

                time_left=0;

        end;

        if(time_left>time())then

                return nil;

        else

                time_left=time()+math.random(1,10)/100;

        end;

        

        if(bullets.current<1)then

                local tick_sound=head:findFirstChild'tick_sound'or _new'sound'{

                        soundId='rbxasset://sounds/SWITCH3.wav';

                        name='tick_sound';

                        volume=0.2;

                        pitch=2;

                        head;

                };

                tick_sound:play();

                if(bullets.clip>0)then

                        time_left=time()+2;

                        h_hue:breakJoints();

                        h_hue.CanCollide=true;

                        h_hue.Velocity=(h_hue.CFrame*CFrame.new(0,5,0)).lookVector*10;

                        _rem(h_hue,10);

                        delay(1.9,function()

                                _make_hue();

                                local got=(bullets.clip>bullets.maximum and 

                                        bullets.maximum or 

                                        bullets.clip)-bullets.current;



                                bullets.clip=bullets.clip-got;

                                bullets.current=bullets.current+got;

                        end);

                end;

                return nil;

        else

                bullets.current=bullets.current-1;

                

                h_weld.C1=_cframe(0,0.75,0,

                                        -math.random(1000,1100)/10,180,0);

                d_weld.C1=_cframe(0,-0.25,0.3);

                

                lightstuff.Visible=true;

                delay(0.1,function()

                        lightstuff.Visible=false;

                end);

                

                _rem(_new'part'{

                        velocity=CFrame.new(drag.Position,(drag.CFrame*CFrame.new(-4,-5,0)).p).lookVector*10;

                        cFrame=drag.CFrame*CFrame.new(-0.5,0,0);

                        size=Vector3.new(0.1,0.1,0.4);

                        color=_RGB(200,200,0);

                        material='Slate';

                        canCollide=true;

                        formFactor=3;

                        inv;

                },5);

                delay(0.1,function()

                        d_weld.C1=_cframe(0,-0.25,0);

                        if(bool_active)then

                                h_weld.C1=h_weld_cf_active;

                        end;

                end)

        end;

        

        local hit,pos=_must(v0,v1,char);

        

        shot_sound:play();

        

        _light(v0,v1);

        

        if(not hit)then return nil;end;

        

        if(hit.Parent.className=='Hat')then

                hit:breakJoints();

                hit.CanCollide=true;

                hit.Velocity=CFrame.new(v0,pos).lookVector*math.random(30,50);

                hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90));

        else

                local hum=_hum(hit.Parent);

                if(not hum)then

                        if(hit.Anchored==false and hit.Size.magnitude<4)then

                                hit:breakJoints();

                                hit.CanCollide=true;

                        end;

                else

                        _hum_dam(hum,math.random(4,6));

                        _blood(pos,math.random(3,6));

                        hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90))/6;

                        if(hit.Name=='Head')then

                                hum.Health=0;

                                _blood(pos,math.random(3,6));

                                delay(0.001,function()

                                        _new(workspace:FindFirstChild'head_shot'or'sound'){

                                                pitch=math.random(70,100)*0.01;

                                                soundId=url:format(1876552);

                                                name='head_shot';

                                                workspace;

                                        }:play();

                                end);

                                _hum_tag(hum);

                                _rem(_new'part'{

                                        cFrame=CFrame.new(v0,pos)*CFrame.new(0,0,-(v0-pos).magnitude*0.5);

                                        size=Vector3.new(0.1,0.1,(v0-pos).magnitude);

                                        color=torso.Color;

                                        transparency=0.5;

                                        canCollide=false;

                                        bottomSurface=0;

                                        anchored=true;

                                        formFactor=3;

                                        topSurface=0;

                                        inv;

                                },30);

                                hit.Parent=nil;

                                for b=0,1 do

                                        for a=0,1 do

                                                for i=0,1 do

                                                        _rem(_new'part'{

                                                                velocity=CFrame.new(v0,pos).lookVector*20;

                                                                cFrame=hit.CFrame*CFrame.new(i,-b,a);

                                                                size=Vector3.new(0.5,0.5,0.5);

                                                                color=_RGB(255,255,255);

                                                                bottomSurface=0;

                                                                canCollide=true;

                                                                transparency=0;

                                                                formFactor=3;

                                                                topSurface=0;

                                                                hum;

                                                        },30);

                                                end;

                                        end;

                                end;

                        end;

                end;

        end;

end;



----------------------------------------------------------------------------------------



_cf_select=function(mouse)

        mouse.Icon=url:format(109111387);--108999296

        bool_active=true;

        

        local arm=char:findFirstChild'Right Arm';

        local weld=torso:findFirstChild'Right Shoulder';

        if(arm and weld)then

                h_weld.Part0=arm;

                h_weld.C1=h_weld_cf_active;

                

                weld.Part1=nil;

                weld.Part0=nil;

                

                weld=_new(torso:findFirstChild'right_arml'or'weld'){

                        name='right_arml';

                        part0=torso;

                        part1=arm;

                        torso;

                };

                

                arml=(arml or 0)+1;

                local alv=arml;

                local gyro=torso:findFirstChild'p_gyro'or Instance.new('BodyGyro',torso);

                        gyro.maxTorque=Vector3.new(5e5,5e5,5e5);

                        gyro.P=30000;

                        gyro.D=1000;

                        gyro.Name='p_gyro';

                repeat

                        local pos=mouse.hit.p;

                        local val,valp,p0,p1,p2,hitpos,cj,c0,c1;

                        

                        val=-math.pi*0.5;

                        valp=val*-1;

                        p0=torso.CFrame;

                        p0=p0+((p0*CFrame.Angles(valp,0,0)).lookVector*0.5)+(p0*CFrame.Angles(0,val,0)).lookVector;

                        p1=p0+((p0.p-pos).unit*-2);

                        p2=CFrame.new((p0.p+p1.p)/2,p0.p)*CFrame.Angles(val,val,0);

                        hitpos=torso.Position;

                        cj=CFrame.new(hitpos);

                        c0=torso.CFrame:inverse()*cj;

                        c1=p2:inverse()*cj;

                        weld.C0=c0;

                        weld.C1=c1;

                        

                        gyro.cframe=CFrame.new(torso.Position,Vector3.new(pos.X,torso.Position.Y,pos.Z));

                        

                        wait(0.001);

                until arml~=alv;

                gyro.Parent=nil;

        end;

end;



_cf_deselect=function()

        bool_active=false;

        arml=(arml or 0)+1;

        loop_shot=(loop_shot or 0)+1;

                

        h_weld.Part0=torso;

        h_weld.C1=h_weld_cf_inactive;

        

        local weld=torso:findFirstChild'right_arml';

        if(weld)then

                weld.Part1=nil;

                weld.Part0=nil;

        end;

        local arm=char:findFirstChild'Right Arm';

        local weld=torso:findFirstChild'Right Shoulder';

        if(arm and weld)then

                weld.Part0=torso;

                weld.Part1=arm;

        end;

end;



_cf_mouse=function(event,fun)

        mouse[event:sub(1,1):upper()..event:sub(2)]:connect(function(...)

                if(bool_active)then

                        fun(...);

                end;

        end);

end;



----------------------------------------------------------------------------------------



do

        local main=getfenv(0);

        local c=game:children();

        local check=function(v)

                if(v.className~=''and v.className~='Instance'and game:service(v.className))then

                        main[v.className:sub(1,1):lower()..v.className:sub(2)]=v;

                end;

        end;

        for i=1,#c do

                pcall(check,c[i]);

        end;

end;



----------------------------------------------------------------------------------------



bullets={

        maximum=51111111111111111111111111110;

        current=511111111111111111111111111111110;

        clip=501111111111111111111111111111111*4;

};



list_base_props={

        backgroundColor3=_RGB(0,0,0);

        textColor3=_RGB(200,200,200);

        borderSizePixel=0;

        color=_RGB(0,0,0);

        archivable=false;

        canCollide=false;

        bottomSurface=0;

        topSurface=0;

        formFactor=0;

        locked=true;

};



----------------------------------------------------------------------------------------



user=players.localPlayer;

mouse=user:getMouse();

char=user.Character;

gui=user.PlayerGui;

bag=user.Backpack;

torso=char.Torso;

head=char.Head;

hum=_hum(char);



url='rbxassetid://%d';

name='dev-uzi';



h_weld_cf_inactive=_cframe(0.35,0.5,0.5,

                                                        0,90,-70);

h_weld_cf_active=_cframe(0,0.75,0,

                                                -110,180,0);



assert(hum,'humanoid is not found');



----------------------------------------------------------------------------------------



_clear();



----------------------------------------------------------------------------------------



_cf_mouse('button1Down',function()

        loop_shot=(loop_shot or 0)+1;

        local vers=loop_shot;

        local step=runService.Stepped;

        repeat

                _shot((tube.CFrame*CFrame.new(0,0,tube.Size.Z*0.5)).p,mouse.hit.p);

                step:wait();--wait(0.001);

        until vers~=loop_shot;

end);



_cf_mouse('button1Up',function()

        loop_shot=(loop_shot or 0)+1;

end);



_cf_mouse('move',function()

        cross_f.Position=UDim2.new(0,mouse.X-11,0,mouse.Y-11);

end);



_cf_mouse('keyDown',function(k)

        if(k=='r')then

                if(bullets.clip>0 and time_left<=time())then

                        local got=(bullets.clip>bullets.maximum and 

                                bullets.maximum or 

                                bullets.clip)-bullets.current;



                        bullets.clip=bullets.clip-got;

                        bullets.current=bullets.current+got;

                        if(got~=0)then

                                time_left=time()+2;

                        end;

                end;

        end;

end);



----------------------------------------------------------------------------------------



screen=_new'screenGui'{

        name=name;

};



cross_f=_new'frame'{

        size=UDim2.new(0,21,0,21);

        backgroundTransparency=1;

        screen;

};



for i=0,1 do

        _new'frame'{

                position=UDim2.new(0,13*i,0,11);

                size=UDim2.new(0,10,0,1);

                cross_f;

        };

end;



for i=0,1 do

        _new'frame'{

                position=UDim2.new(0,11,0,13*i);

                size=UDim2.new(0,1,0,10);

                cross_f;

        };

end;



----------------------------------------------------------------------------------------



shot_sound=_new(head:findFirstChild'2920959'or'sound'){

        soundId=url:format(2920959);

        pitch=1.4;

        head;

};

if(shot_sound.Name~='2920959')then

        shot_sound.Name='2920959';

        shot_sound:play();

end;



bin=_new'hopperBin'{

        deselected=_cf_deselect;

        selected=_cf_select;

        name=name;

        bag;

};



inv=_new'model'{

        name=name;

        char;

};



handle=_new'part'{

        size=Vector3.new(0.3,1.3,0.4);

        color=_RGB(140,140,140);

        name='handle';

        formFactor=3;

        inv;

        touched=function(hit)

                if(hit.Parent.className=='Model')then

                        local hum=_hum(hit.Parent);

                        if(hum~=nil)then

                                _hum_dam(hum,handle.Velocity.magnitude);

                        end;

                end;

        end;

};

        h_weld=_new'weld'{

                c1=h_weld_cf_inactive;

                part1=handle;

                part0=torso;

                handle;

        };

                _make_hue();

                

                h_part=_new'part'{

                        size=Vector3.new(0.4,0.4,1.4);

                        color=_RGB(140,140,140);

                        name='handle';

                        formFactor=3;

                        handle;

                };

                hp_weld=_new'weld'{

                        c1=_cframe(0,-1.3/2,-0.3,

                                                20,0,0);

                        part0=handle;

                        part1=h_part;

                        handle;

                };

                

                drag=_new'part'{

                        size=Vector3.new(0.5,0.45,1.5);

                        color=_RGB(100,100,100);

                        name='handle';

                        formFactor=3;

                        handle;

                };

                d_weld=_new'weld'{

                        c1=_cframe(0,-0.25,0);

                        part0=h_part;

                        part1=drag;

                        handle;

                };

                

                tube=_new'part'{

                        size=Vector3.new(0.2,0.2,1.5);

                        color=_RGB(0,0,0);

                        name='handle';

                        formFactor=3;

                        handle;

                };

                t_weld=_new'weld'{

                        c1=_cframe(0,-0.3,-0.1);

                        part0=h_part;

                        part1=tube;

                        handle;

                };



bullets_label=_new'textLabel'{

        textStrokeColor3=_RGB(0,0,0);

        textColor3=_RGB(200,200,200);

        textStrokeTransparency=0;

        backgroundTransparency=1;

        fontSize=5;

        screen;

};



lightstuff=_new'frame'{

        backgroundColor3=_RGB(255,255,255);

        position=UDim2.new(0,0,0,-1);

        backgroundTransparency=0.5;

        size=UDim2.new(1,0,1,1);

        borderSizePixel=0;

        visible=false;

        screen;

};



coroutine.wrap(function()

        local red,white,green;

        repeat

                if(screen.Parent)then

                        if(not green and bullets.current==bullets.maximum)then

                                green=true;

                                bullets_label.TextColor3=_RGB(0,200,0);

                        elseif(not red and bullets.current==0)then

                                red=true;

                                bullets_label.TextColor3=_RGB(200,0,0);

                        elseif((red or green)and bullets.current~=0 and bullets.current~=bullets.maximum)then

                                bullets_label.TextColor3=_RGB(200,200,200);

                                green=false;

                                red=false;

                        end;

                        bullets_label.Text=('Bullets: %d/%d'):format(bullets.current,bullets.clip);

                        bullets_label.Size=UDim2.new(0,bullets_label.TextBounds.X,0,bullets_label.TextBounds.Y);

                        bullets_label.Position=UDim2.new(1,-bullets_label.TextBounds.X-6,1,-bullets_label.TextBounds.Y-6);

                end;

                wait(0.001);

        until nil;

end)();



----------------------------------------------------------------------------------------



_G.dev_pistol_version=(_G.dev_pistol_version or 0)+1;

local vers=_G.dev_pistol_version;

repeat _update();wait(0.001);until _G.dev_pistol_version~=vers or hum.Health==0;

if(hum.Health==0)then

        _clear();

end;

script.Disabled=true;



--mediafire-----------------------------------------------------------------------------]]},
    {name = "R6 fe", code = [[function oof()
game:GetObjects("rbxassetid://18732040453")[1].Parent=game.Workspace.Terrain
local c = game.Workspace.Terrain:FindFirstChildOfClass("Model"):Clone()
c.Parent = game.Workspace
c:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Workspace.Terrain:FindFirstChildOfClass("Model"):remove()
c.Name = game.Players.LocalPlayer.Name
game.Players.LocalPlayer.Character = c
game.Workspace.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid")

local Figure = game.Players.LocalPlayer.Character
local Torso = Figure:WaitForChild("Torso")
local RightShoulder = Torso:WaitForChild("Right Shoulder")
local LeftShoulder = Torso:WaitForChild("Left Shoulder")
local RightHip = Torso:WaitForChild("Right Hip")
local LeftHip = Torso:WaitForChild("Left Hip")
local Neck = Torso:WaitForChild("Neck")
local Humanoid = Figure:WaitForChild("Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = {
idle = {
{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
},
walk = {
{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
},
run = {
{ id = "run.xml", weight = 10 }
},
jump = {
{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
},
fall = {
{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
},
climb = {
{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
},
sit = {
{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
},
toolnone = {
{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
},
toolslash = {
{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
-- { id = "slash.xml", weight = 10 }
},
toollunge = {
{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
},
wave = {
{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
},
point = {
{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
},
dance1 = {
{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
},
dance2 = {
{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
},
dance3 = {
{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
},
laugh = {
{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
},
cheer = {
{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
},
}
local dances = {"dance1", "dance2", "dance3"}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

function configureAnimationSet(name, fileList)
if (animTable[name] ~= nil) then
for _, connection in pairs(animTable[name].connections) do
connection:disconnect()
end
end
animTable[name] = {}
animTable[name].count = 0
animTable[name].totalWeight = 0
animTable[name].connections = {}

-- check for config values
local config = game.Players.LocalPlayer.Character.Animate:FindFirstChild(name)
if (config ~= nil) then
-- print("Loading anims " .. name)
table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
local idx = 1
for _, childPart in pairs(config:GetChildren()) do
if (childPart:IsA("Animation")) then
table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
animTable[name][idx] = {}
animTable[name][idx].anim = childPart
local weightObject = childPart:FindFirstChild("Weight")
if (weightObject == nil) then
animTable[name][idx].weight = 1
else
animTable[name][idx].weight = weightObject.Value
end
animTable[name].count = animTable[name].count + 1
animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
-- print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
idx = idx + 1
end
end
end

-- fallback to defaults
if (animTable[name].count <= 0) then
for idx, anim in pairs(fileList) do
animTable[name][idx] = {}
animTable[name][idx].anim = Instance.new("Animation")
animTable[name][idx].anim.Name = name
animTable[name][idx].anim.AnimationId = anim.id
animTable[name][idx].weight = anim.weight
animTable[name].count = animTable[name].count + 1
animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
end
end
end

-- Setup animation objects
function scriptChildModified(child)
local fileList = animNames[child.Name]
if (fileList ~= nil) then
configureAnimationSet(child.Name, fileList)
end
end

game.Players.LocalPlayer.Character.Animate.ChildAdded:connect(scriptChildModified)
game.Players.LocalPlayer.Character.Animate.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do
configureAnimationSet(name, fileList)
end

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.3
local jumpMaxLimbVelocity = 0.75

-- functions

function stopAllAnimations()
local oldAnim = currentAnim

-- return to idle if finishing an emote
if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
oldAnim = "idle"
end

currentAnim = ""
currentAnimInstance = nil
if (currentAnimKeyframeHandler ~= nil) then
currentAnimKeyframeHandler:disconnect()
end

if (currentAnimTrack ~= nil) then
currentAnimTrack:Stop()
currentAnimTrack:Destroy()
currentAnimTrack = nil
end
return oldAnim
end

function setAnimationSpeed(speed)
if speed ~= currentAnimSpeed then
currentAnimSpeed = speed
currentAnimTrack:AdjustSpeed(currentAnimSpeed)
end
end

function keyFrameReachedFunc(frameName)
if (frameName == "End") then

local repeatAnim = currentAnim
-- return to idle if finishing an emote
if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
repeatAnim = "idle"
end

local animSpeed = currentAnimSpeed
playAnimation(repeatAnim, 0.0, Humanoid)
setAnimationSpeed(animSpeed)
end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid)

local roll = math.random(1, animTable[animName].totalWeight)
local origRoll = roll
local idx = 1
while (roll > animTable[animName][idx].weight) do
roll = roll - animTable[animName][idx].weight
idx = idx + 1
end
-- print(animName .. " " .. idx .. " [" .. origRoll .. "]")
local anim = animTable[animName][idx].anim

-- switch animation
if (anim ~= currentAnimInstance) then

if (currentAnimTrack ~= nil) then
currentAnimTrack:Stop(transitionTime)
currentAnimTrack:Destroy()
end

currentAnimSpeed = 1.0

-- load it to the humanoid; get AnimationTrack
currentAnimTrack = humanoid:LoadAnimation(anim)
currentAnimTrack.Priority = Enum.AnimationPriority.Core

-- play the animation
currentAnimTrack:Play(transitionTime)
currentAnim = animName
currentAnimInstance = anim

-- set up keyframe name triggers
if (currentAnimKeyframeHandler ~= nil) then
currentAnimKeyframeHandler:disconnect()
end
currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
if (frameName == "End") then
-- print("Keyframe : ".. frameName)
playToolAnimation(toolAnimName, 0.0, Humanoid)
end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)

local roll = math.random(1, animTable[animName].totalWeight)
local origRoll = roll
local idx = 1
while (roll > animTable[animName][idx].weight) do
roll = roll - animTable[animName][idx].weight
idx = idx + 1
end
-- print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
local anim = animTable[animName][idx].anim

if (toolAnimInstance ~= anim) then

if (toolAnimTrack ~= nil) then
toolAnimTrack:Stop()
toolAnimTrack:Destroy()
transitionTime = 0
end

-- load it to the humanoid; get AnimationTrack
toolAnimTrack = humanoid:LoadAnimation(anim)
if priority then
toolAnimTrack.Priority = priority
end

-- play the animation
toolAnimTrack:Play(transitionTime)
toolAnimName = animName
toolAnimInstance = anim

currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
end
end

function stopToolAnimations()
local oldAnim = toolAnimName

if (currentToolAnimKeyframeHandler ~= nil) then
currentToolAnimKeyframeHandler:disconnect()
end

toolAnimName = ""
toolAnimInstance = nil
if (toolAnimTrack ~= nil) then
toolAnimTrack:Stop()
toolAnimTrack:Destroy()
toolAnimTrack = nil
end


return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
if speed > 0.01 then
playAnimation("walk", 0.1, Humanoid)
if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
setAnimationSpeed(speed / 14.5)
end
pose = "Running"
else
if emoteNames[currentAnim] == nil then
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"
end
end
end

function onDied()
pose = "Dead"
end

function onJumping()
playAnimation("jump", 0.1, Humanoid)
jumpAnimTime = jumpAnimDuration
pose = "Jumping"
end

function onClimbing(speed)
playAnimation("climb", 0.1, Humanoid)
setAnimationSpeed(speed / 12.0)
pose = "Climbing"
end

function onGettingUp()
pose = "GettingUp"
end

function onFreeFall()
if (jumpAnimTime <= 0) then
playAnimation("fall", fallTransitionTime, Humanoid)
end
pose = "FreeFall"
end

function onFallingDown()
pose = "FallingDown"
end

function onSeated()
pose = "Seated"
end

function onPlatformStanding()
pose = "PlatformStanding"
end

function onSwimming(speed)
if speed > 0 then
pose = "Running"
else
pose = "Standing"
end
end

function getTool()
for _, kid in ipairs(Figure:GetChildren()) do
if kid.className == "Tool" then return kid end
end
return nil
end

function getToolAnim(tool)
for _, c in ipairs(tool:GetChildren()) do
if c.Name == "toolanim" and c.className == "StringValue" then
return c
end
end
return nil
end

function animateTool()

if (toolAnim == "None") then
playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
return
end

if (toolAnim == "Slash") then
playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
return
end

if (toolAnim == "Lunge") then
playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
return
end
end

function moveSit()
RightShoulder.MaxVelocity = 0.15
LeftShoulder.MaxVelocity = 0.15
RightShoulder:SetDesiredAngle(3.14 /2)
LeftShoulder:SetDesiredAngle(-3.14 /2)
RightHip:SetDesiredAngle(3.14 /2)
LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
local amplitude = 1
local frequency = 1
  local deltaTime = time - lastTick
  lastTick = time

local climbFudge = 0
local setAngles = false

  if (jumpAnimTime > 0) then
  jumpAnimTime = jumpAnimTime - deltaTime
  end

if (pose == "FreeFall" and jumpAnimTime <= 0) then
playAnimation("fall", fallTransitionTime, Humanoid)
elseif (pose == "Seated") then
playAnimation("sit", 0.5, Humanoid)
return
elseif (pose == "Running") then
playAnimation("walk", 0.1, Humanoid)
elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
-- print("Wha " .. pose)
stopAllAnimations()
amplitude = 0.1
frequency = 1
setAngles = true
end

if (setAngles) then
local desiredAngle = amplitude * math.sin(time * frequency)

RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
RightHip:SetDesiredAngle(-desiredAngle)
LeftHip:SetDesiredAngle(-desiredAngle)
end

-- Tool Animation handling
local tool = getTool()
if tool and tool:FindFirstChild("Handle") then

local animStringValueObject = getToolAnim(tool)

if animStringValueObject then
toolAnim = animStringValueObject.Value
-- message recieved, delete StringValue
animStringValueObject.Parent = nil
toolAnimTime = time + .3
end

if time > toolAnimTime then
toolAnimTime = 0
toolAnim = "None"
end

animateTool()
else
stopToolAnimations()
toolAnim = "None"
toolAnimInstance = nil
toolAnimTime = 0
end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
local emote = ""
if msg == "/e dance" then
emote = dances[math.random(1, #dances)]
elseif (string.sub(msg, 1, 3) == "/e ") then
emote = string.sub(msg, 4)
elseif (string.sub(msg, 1, 7) == "/emote ") then
emote = string.sub(msg, 8)
end

if (pose == "Standing" and emoteNames[emote] ~= nil) then
playAnimation(emote, 0.1, Humanoid)
end

end)


-- main program

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent ~= nil do
local _, time = wait(0.1)
move(time)
end

if Humanoid.Health == 0
then
print("death occured, waiting for respawn")
Figure:WaitForChild("Humanoid")
print("making r6 again")
oof()
end
end
oof()

local UIS = game:GetService("UserInputService")

while true do wait()
if humanoid.health < 1 then
local deathposition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end


function InputBegan(Input)
if Input.KeyCode == Enum.KeyCode.Insert then
game.Players.LocalPlayer.HumanoidRootPart.CFrame = deathposition
end
end

UIS.InputBegan:Connect(InputBegan)]]},
    
}

-- Instances: 16 | Scripts: 0 | Modules: 0 | Tags: 0
local LMG2L = {};

-- Players.Hacke999999999980.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["AutoLocalize"] = false;
LMG2L["ScreenGui_1"]["ClipToDeviceSafeArea"] = false;
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
LMG2L["ScreenGui_1"]["ResetOnSpawn"] = false;


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Frame_2"]["Size"] = UDim2.new(0, 536, 0, 376);
LMG2L["Frame_2"]["Position"] = UDim2.new(0, 8, 0, 4);


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.ScrollingFrame
LMG2L["ScrollingFrame_3"] = Instance.new("ScrollingFrame", LMG2L["Frame_2"]);
LMG2L["ScrollingFrame_3"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame_3"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
LMG2L["ScrollingFrame_3"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
LMG2L["ScrollingFrame_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_3"]["Size"] = UDim2.new(0, 360, 0, 276);
LMG2L["ScrollingFrame_3"]["ScrollBarImageColor3"] = Color3.fromRGB(194, 194, 194);
LMG2L["ScrollingFrame_3"]["Position"] = UDim2.new(0, 6, 0, 26);
LMG2L["ScrollingFrame_3"]["BorderColor3"] = Color3.fromRGB(182, 182, 182);
LMG2L["ScrollingFrame_3"]["ScrollBarThickness"] = 0;


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.ScrollingFrame.TextBox
LMG2L["TextBox_4"] = Instance.new("TextBox", LMG2L["ScrollingFrame_3"]);
LMG2L["TextBox_4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["TextBox_4"]["BorderSizePixel"] = 0;
LMG2L["TextBox_4"]["TextWrapped"] = true;
LMG2L["TextBox_4"]["AutoLocalize"] = false;
LMG2L["TextBox_4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["TextBox_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextBox_4"]["ClearTextOnFocus"] = false;
LMG2L["TextBox_4"]["PlaceholderText"] = [[local...
]];
LMG2L["TextBox_4"]["Size"] = UDim2.new(0, 360, 0, 770);
LMG2L["TextBox_4"]["Text"] = [[]];


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextLabel
LMG2L["TextLabel_5"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["TextLabel_5"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_5"]["TextSize"] = 12;
LMG2L["TextLabel_5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["TextLabel_5"]["BackgroundColor3"] = Color3.fromRGB(228, 228, 228);
LMG2L["TextLabel_5"]["Size"] = UDim2.new(0, 536, 0, 22);
LMG2L["TextLabel_5"]["Text"] = [[ server site panel by 00script]];


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.ScrollingFrame
LMG2L["ScrollingFrame_6"] = Instance.new("ScrollingFrame", LMG2L["Frame_2"]);
LMG2L["ScrollingFrame_6"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame_6"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
LMG2L["ScrollingFrame_6"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
LMG2L["ScrollingFrame_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_6"]["Size"] = UDim2.new(0, 162, 0, 316);
LMG2L["ScrollingFrame_6"]["ScrollBarImageColor3"] = Color3.fromRGB(194, 194, 194);
LMG2L["ScrollingFrame_6"]["Position"] = UDim2.new(0, 370, 0, 56);
LMG2L["ScrollingFrame_6"]["BorderColor3"] = Color3.fromRGB(182, 182, 182);
LMG2L["ScrollingFrame_6"]["ScrollBarThickness"] = 0;


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.ScrollingFrame.UIListLayout
LMG2L["UIListLayout_7"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_6"]);



-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.ScrollingFrame.TextButton
LMG2L["TextButton_8"] = Instance.new("TextButton", LMG2L["ScrollingFrame_6"]);
LMG2L["TextButton_8"]["BorderSizePixel"] = 0;
LMG2L["TextButton_8"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230);
LMG2L["TextButton_8"]["Size"] = UDim2.new(0, 162, 0, 22);
LMG2L["TextButton_8"]["Text"] = [[]];


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_9"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_9"]["BorderSizePixel"] = 0;
LMG2L["TextButton_9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_9"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_9"]["Size"] = UDim2.new(0, 132, 0, 72);
LMG2L["TextButton_9"]["Text"] = [[EXECUTE]];
LMG2L["TextButton_9"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_9"]["Position"] = UDim2.new(0, 6, 0, 304);


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_a"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_a"]["BorderSizePixel"] = 0;
LMG2L["TextButton_a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_a"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_a"]["Size"] = UDim2.new(0, 116, 0, 72);
LMG2L["TextButton_a"]["Text"] = [[CLEAR]];
LMG2L["TextButton_a"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_a"]["Position"] = UDim2.new(0, 138, 0, 304);
LMG2L["TextButton_a"]MouseButton1Click:Connect(function()
    LMG2L["TextBox_4"].Text = ""
end)


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
MG2L["TextButton_b"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_b"]["BorderSizePixel"] = 0;
LMG2L["TextButton_b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_b"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_b"]["Size"] = UDim2.new(0, 114, 0, 72);
LMG2L["TextButton_b"]["Text"] = [[L0AD]];
LMG2L["TextButton_b"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_b"]["Position"] = UDim2.new(0, 252, 0, 304);
LMG2L["TextButton_b"].MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/SsidBgru"))()
end)

-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_c"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_c"]["BorderSizePixel"] = 0;
LMG2L["TextButton_c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_c"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_c"]["Size"] = UDim2.new(0, 56, 0, 32);
LMG2L["TextButton_c"]["Text"] = [[RE]];
LMG2L["TextButton_c"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_c"]["Position"] = UDim2.new(0, 370, 0, 22);
LMG2L["TextButton_c"].MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_d"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_d"]["BorderSizePixel"] = 0;
LMG2L["TextButton_d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_d"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_d"]["Size"] = UDim2.new(0, 54, 0, 32);
LMG2L["TextButton_d"]["Text"] = [[idk]];
LMG2L["TextButton_d"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_d"]["Position"] = UDim2.new(0, 424, 0, 22);


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_e"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_e"]["BorderSizePixel"] = 0;
LMG2L["TextButton_e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["TextButton_e"]["BackgroundColor3"] = Color3.fromRGB(229, 229, 229);
LMG2L["TextButton_e"]["Size"] = UDim2.new(0, 58, 0, 32);
LMG2L["TextButton_e"]["Text"] = [[Dex]];
LMG2L["TextButton_e"]["Style"] = Enum.ButtonStyle.RobloxRoundDropdownButton;
LMG2L["TextButton_e"]["Position"] = UDim2.new(0, 474, 0, 22);
LMG2L["TextButton_e"].MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)


-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.UIDragDetector
LMG2L["UIDragDetector_f"] = Instance.new("UIDragDetector", LMG2L["Frame_2"]);



-- Players.Hacke999999999980.PlayerGui.ScreenGui.Frame.TextButton
LMG2L["TextButton_10"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["TextButton_10"]["BorderSizePixel"] = 0;
LMG2L["TextButton_10"]["BackgroundColor3"] = Color3.fromRGB(227, 227, 227);
LMG2L["TextButton_10"]["Size"] = UDim2.new(0, 30, 0, 22);
LMG2L["TextButton_10"]["Text"] = [[×]];
LMG2L["TextButton_10"]["Position"] = UDim2.new(0, 506, 0, 0);
LMG2L["TextButton_10"].MouseButton1Click:Connect(function()
    LMG2L["ScreenGui_1"]:Destroy()
end)



return LMG2L["ScreenGui_1"], require;
