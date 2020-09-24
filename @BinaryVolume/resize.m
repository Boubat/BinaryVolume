function resize(obj,newSize)
  currentCenter = obj.origin + obj.size/2;

  obj.origin = -obj.size/2;
  obj.volume = newVolume;
  obj.origin = currentCenter - obj.size/2;
end