function insertVolume(obj,insertedVolume)
  copiedInsertedVolume = insertedVolume.copy();
  currentResolution = obj.resolution;
  lowestResolution = min(obj.resolution,copiedInsertedVolume.resolution);
  obj.changeResolution(lowestResolution);
  copiedInsertedVolume.changeResolution(lowestResolution);

  insertionPoint = obj.getIndicesOfPointInVolume(copiedInsertedVolume.origin);
  insertionPointOpposite = (insertionPoint + size(copiedInsertedVolume.volume) - [1 1 1]);
  insertionPoint = min(size(obj.volume),max([1 1 1],insertionPoint));
  insertionPointOpposite = min(size(obj.volume),max([1 1 1],insertionPointOpposite));
  if any(insertionPoint == insertionPointOpposite)
    return
  end
  extractionPoint = copiedInsertedVolume.getIndicesOfPointInVolume(obj.origin + obj.resolution.*(insertionPoint-[1 1 1]));
  extractionPointOpposite = extractionPoint + (insertionPointOpposite - insertionPoint);

  subvolumeToInsert = copiedInsertedVolume.volume(extractionPoint(1):extractionPointOpposite(1),...
    extractionPoint(2):extractionPointOpposite(2),...
    extractionPoint(3):extractionPointOpposite(3)); 
  obj.volume(insertionPoint(1):insertionPointOpposite(1),...
    insertionPoint(2):insertionPointOpposite(2),...
    insertionPoint(3):insertionPointOpposite(3)) = subvolumeToInsert;
end