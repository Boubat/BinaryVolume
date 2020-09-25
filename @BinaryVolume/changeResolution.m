function output = changeResolution(obj,newResolution)
  assert(all(newResolution > 0));
  if all(newResolution == obj.resolution)
    return
  end
  obj.volume = imresize3(obj.volume,ceil(obj.size./newResolution));
  obj.resolution = newResolution;
  output = obj;
end