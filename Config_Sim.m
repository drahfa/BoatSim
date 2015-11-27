classdef Config_Sim
% Set the start-up simulation parameters by editing the property values below.
% Leave type = -1 alone.
    
    properties
        dt = 0.01 ; % timestep (s)
        T = 20 ; % timeseries length (s)
        showFrame = 2 ; % how many iterations should be computed before the 3D animation is refreshed
        plotOutputs = false ; % should the arbitrary outputs of interest be plotted after a timeseries sim
        
        p0 = [0,0,0]' ; % initial position [x,y,z]' in worldframe (m)
        v0 = [1,2,10]' ; % initial velocity [vx,vy,vz]' in worldframe (m/s)
        y0 = 0 ; % initial yaw angle from +x about +z in worldframe (rad, -pi to pi)
        w0 = [0,0,10]' ; % initial angular rates [rolling,pitching,yawing]' about bodyframe axes (rad/s)
        
        pDes0 = [0,0]' ; % initial position waypoint [x,y] (m)
        yDes0 = 0 ; % initial yaw waypoint (rad, -pi to pi)
        
        ocam = [0, 0, 0] ; % initial origin of 3D viewing window (m)
        spans = 0.5*[-10 10 -10 10 -2 4] ; % initial 3D axis limits, [xmin xmax ymin ymax zmin zmax] (m)
        windowSize = zeros(1,6) ; % initialized in constructor function
        view0 = [-135 30] ; % initial viewing angle for 3D graphics, usually [-135 30]
        
        type = -1 ; % don't change, -1 implies currently uninitialized
    end
    
    methods
        function sim = Config_Sim()
            sim.windowSize(1) = sim.ocam(1) + sim.spans(1) ;
            sim.windowSize(2) = sim.ocam(1) + sim.spans(2) ;
            sim.windowSize(3) = sim.ocam(2) + sim.spans(3) ;
            sim.windowSize(4) = sim.ocam(2) + sim.spans(4) ;
            sim.windowSize(5) = sim.ocam(3) + sim.spans(5) ;
            sim.windowSize(6) = sim.ocam(3) + sim.spans(6) ;  
        end
    end
    
end