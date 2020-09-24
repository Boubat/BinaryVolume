classdef BinaryVolume < handle

  properties (Access = public)
    % origin is the spatial position of volume(1,1,1)
    origin = [-50 -50 -50];
    size = [100 100 100];
    resolution = [1 1 1];
    volume = false(100,100,100);
  end



  methods 

    function obj = BinaryVolume(varargin)
      if nargin == 1
        obj.volume = false(varargin{1});
        obj.origin = -obj.size/2;
      end
    end

    function set.volume(obj,value)
      obj.volume = value;
      obj.size = size(obj.volume).*obj.resolution;
    end

    function set.resolution(obj,value)
      assert(all(value > 0));
      obj.resolution = value;
      obj.size = size(obj.volume).*obj.resolution;
    end

    % intersect
    % createTetrahedron
    % resize



  end

end