function addSphere(obj,radius,center)
  squaredDistanceToCenter = obj.getSquaredDistanceToPointXYZ(center);
  obj.volume = obj.volume | (squaredDistanceToCenter <= radius^2);
end 