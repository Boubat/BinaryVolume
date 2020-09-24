function output = getSmallestCommonBoundingVolume(obj,comparedVolume)
  commonOrigin = min(obj.origin,comparedVolume.origin)
  commonDiagonal = max( (obj.origin + obj.size) , (comparedVolume.origin + comparedVolume.size) )
  boundingVolume = BinaryVolume(commonDiagonal-commonOrigin);
  boundingVolume.setOrigin(commonOrigin);
  output = boundingVolume;
end