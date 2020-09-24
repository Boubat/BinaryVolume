function output = subsindex(obj,volumeCompared)
  if obj.containsVolume(volumeCompared);
    output = volumesDifference(obj.copy(),volumeCompared.copy());
  elseif volumeCompared.containsVolume(obj);
    output = volumesDifference(volumeCompared.copy(),obj.copy());
  else
  end
end

function output = volumesIntersection(baseVolume,insertedVolume)
  lowestResolution = min(baseVolume.resolution,insertedVolume.resolution);
  baseVolume.changeResolution(lowestResolution);
  insertedVolume.changeResolution(lowestResolution);

  insertionPoint = baseVolume.getIndicesOfPointInVolume(insertedVolume.origin);
  subVolume = baseVolume.volume(insertionPoint(1):insertionPoint(1)+size(insertedVolume.volume,1)-1,...
    insertionPoint(2):insertionPoint(2)+size(insertedVolume.volume,2)-1,...
    insertionPoint(3):insertionPoint(3)+size(insertedVolume.volume,3)-1);

  baseVolume.volume(insertionPoint(1):insertionPoint(1)+size(insertedVolume.volume,1)-1,...
    insertionPoint(2):insertionPoint(2)+size(insertedVolume.volume,2)-1,...
    insertionPoint(3):insertionPoint(3)+size(insertedVolume.volume,3)-1) = subVolume & not(insertedVolume.volume);

  output = baseVolume;
end)