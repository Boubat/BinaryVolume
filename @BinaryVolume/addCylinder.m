function addCylinder(obj,radius,length,center)
  squaredDistanceToZAxis = obj.getSquaredDistanceToPointXY(center);
  cylinder = squaredDistanceToZAxis <= radius^2;

  cylinderStartPoint = obj.getIndicesOfPointInVolume(center - [0 0 length/2]);
  cylinderEndPoint = obj.getIndicesOfPointInVolume(center + [0 0 length/2]);

  cylinderStartIndex = max(1,cylinderStartPoint(3));
  cylinderEndIndex = min(size(obj.volume,3),cylinderEndPoint(3));
  cylinder(:,:,1:cylinderStartIndex) = false;
  cylinder(:,:,cylinderEndIndex:end) = false;
  obj.volume = obj.volume | cylinder;
end