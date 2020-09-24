function rotate(obj,rotationVector)
  rotationVector(4) = rotationVector(4)*180/pi;
  startingResolution = obj.resolution;
  obj.setResolution([1 1 1]);
  obj.volume = imrotate3(obj.volume,rotationVector(4),rotationVector(1:3),'nearest','loose');
  obj.setResolution(startingResolution);
end