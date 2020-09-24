function output = containsVolume(obj,binaryVolume)
  boundaryMin = obj.origin;
  boundaryMax = obj.origin + obj.size;
  testedVolumeMin = binaryVolume.origin;
  testedVolumeMax = binaryVolume.origin + binaryVolume.size;

  if not( all(boundaryMin <= testedVolumeMin) )
    output = false;
    return
  end
  if not( all(boundaryMax >= testedVolumeMax) )
    output = false;
    return
  end

  output = true;
end
