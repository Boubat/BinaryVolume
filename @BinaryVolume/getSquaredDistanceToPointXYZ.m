function output = getSquaredDistanceToPointXYZ(obj,point)
  [X,Y,Z] = ndgrid(int32(1:size(obj.volume,1)),int32(1:size(obj.volume,2)),int32(1:size(obj.volume,3)));

  point = obj.getIndicesOfPointInVolume(point);

  X = (X - point(1)) * obj.resolution(1);
  Y = (Y - point(2)) * obj.resolution(2);
  Z = (Z - point(3)) * obj.resolution(3);

  output = X.^2 + Y.^2 + Z.^2;
end