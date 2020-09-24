function output = getIndicesOfPointInVolume(obj,point)
  output = round((point - obj.origin)./obj.resolution) + [1 1 1];
end